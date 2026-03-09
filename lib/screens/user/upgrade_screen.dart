import 'dart:math' as math;
import 'package:flutter/material.dart';

const Color _kRed = Color(0xFFC42D27);
const Color _kRedDark = Color(0xFF7B0D07);
const Color _kGold = Color(0xFFFFB800);
const Color _kGoldLight = Color(0xFFFFD54F);

// ── Particle data ─────────────────────────────────────────────────────────────
class _Particle {
  double x, y, vx, vy, radius, opacity;
  Color color;
  _Particle(
      this.x, this.y, this.vx, this.vy, this.radius, this.opacity, this.color);
}

class UpgradeScreen extends StatefulWidget {
  const UpgradeScreen({super.key});

  @override
  State<UpgradeScreen> createState() => _UpgradeScreenState();
}

class _UpgradeScreenState extends State<UpgradeScreen>
    with TickerProviderStateMixin {
  late AnimationController _shimmerCtrl;
  late AnimationController _pulseCtrl;
  late AnimationController _floatCtrl;
  late AnimationController _rotateCtrl;
  late AnimationController _staggerCtrl;
  late AnimationController _particleCtrl;
  late AnimationController _waveCtrl;
  late AnimationController _countCtrl;

  late Animation<double> _shimmer;
  late Animation<double> _pulse;
  late Animation<double> _float;
  late Animation<double> _rotate;
  late Animation<double> _wave;
  late Animation<double> _count;

  final List<Animation<Offset>> _slideAnims = [];
  final List<Animation<double>> _fadeAnims = [];

  // Particles
  final List<_Particle> _particles = [];
  final math.Random _rng = math.Random(42);

  @override
  void initState() {
    super.initState();

    _shimmerCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat();
    _pulseCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _floatCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..repeat(reverse: true);
    _rotateCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 18))
          ..repeat();
    _particleCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 8))
          ..repeat();
    _waveCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
    _staggerCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1800));
    _countCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    _shimmer = Tween<double>(begin: -1.5, end: 2.5).animate(
        CurvedAnimation(parent: _shimmerCtrl, curve: Curves.easeInOut));
    _pulse = Tween<double>(begin: 0.88, end: 1.12)
        .animate(CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeInOut));
    _float = Tween<double>(begin: -10.0, end: 10.0)
        .animate(CurvedAnimation(parent: _floatCtrl, curve: Curves.easeInOut));
    _rotate = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(CurvedAnimation(parent: _rotateCtrl, curve: Curves.linear));
    _wave = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(CurvedAnimation(parent: _waveCtrl, curve: Curves.linear));
    _count = CurvedAnimation(parent: _countCtrl, curve: Curves.easeOut);

    // Init particles
    for (int i = 0; i < 35; i++) {
      _particles.add(_Particle(
        _rng.nextDouble(),
        _rng.nextDouble(),
        (_rng.nextDouble() - 0.5) * 0.002,
        -_rng.nextDouble() * 0.003 - 0.001,
        _rng.nextDouble() * 3 + 1,
        _rng.nextDouble() * 0.6 + 0.2,
        _rng.nextBool()
            ? _kGold.withOpacity(0.7)
            : Colors.white.withOpacity(0.5),
      ));
    }

    // Stagger 5 feature items
    for (int i = 0; i < 5; i++) {
      final start = i * 0.15;
      final end = (start + 0.4).clamp(0.0, 1.0);
      final curve =
          Interval(start.clamp(0.0, 1.0), end, curve: Curves.easeOutBack);
      _slideAnims.add(
          Tween<Offset>(begin: const Offset(0.5, 0), end: Offset.zero)
              .animate(CurvedAnimation(parent: _staggerCtrl, curve: curve)));
      _fadeAnims.add(Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: _staggerCtrl,
              curve: Interval(start.clamp(0.0, 1.0), end,
                  curve: Curves.easeOut))));
    }

    Future.delayed(const Duration(milliseconds: 400), () {
      if (mounted) {
        _staggerCtrl.forward();
        _countCtrl.forward();
      }
    });
  }

  @override
  void dispose() {
    _shimmerCtrl.dispose();
    _pulseCtrl.dispose();
    _floatCtrl.dispose();
    _rotateCtrl.dispose();
    _staggerCtrl.dispose();
    _particleCtrl.dispose();
    _waveCtrl.dispose();
    _countCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0000),
      body: Stack(
        children: [
          // ── Wave + particle background ──────────────────────────────
          Positioned.fill(
            child: AnimatedBuilder(
              animation: Listenable.merge([_wave, _particleCtrl]),
              builder: (_, __) => CustomPaint(
                painter: _BgPainter(
                  wavePhase: _wave.value,
                  particleT: _particleCtrl.value,
                  particles: _particles,
                ),
              ),
            ),
          ),

          // ── Rotating decorative rings ───────────────────────────────
          AnimatedBuilder(
            animation: _rotate,
            builder: (_, __) => Positioned(
              top: topPad + 20,
              left: 0,
              right: 0,
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: _rotate.value,
                      child: Container(
                        width: 270,
                        height: 270,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _kGold.withOpacity(0.07), width: 1.5),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -_rotate.value * 0.6,
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _kRed.withOpacity(0.1), width: 1),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: _rotate.value * 1.5,
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _kGold.withOpacity(0.05), width: 0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Column(
            children: [
              SizedBox(height: topPad),
              _buildAppBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHero(),
                      _buildContentCard(context, bottomPad),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ── AppBar ───────────────────────────────────────────────────────────────
  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 16, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white70, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          const Expanded(
              child: Text('Upgrade Premium',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white))),
          AnimatedBuilder(
            animation: _shimmer,
            builder: (_, __) => ShaderMask(
              shaderCallback: (b) => LinearGradient(
                begin: Alignment(_shimmer.value - 1, 0),
                end: Alignment(_shimmer.value, 0),
                colors: const [_kGold, _kGoldLight, _kGold],
              ).createShader(b),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: _kGold.withOpacity(0.5), width: 1.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(children: [
                  Icon(Icons.workspace_premium_rounded,
                      color: Colors.white, size: 14),
                  SizedBox(width: 5),
                  Text('GRATIS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1)),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Hero ─────────────────────────────────────────────────────────────────
  Widget _buildHero() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            width: 220,
            height: 220,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer pulse ring
                AnimatedBuilder(
                  animation: _pulse,
                  builder: (_, __) => Container(
                    width: 210 * _pulse.value,
                    height: 210 * _pulse.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        _kRed.withOpacity(0.07),
                        Colors.transparent
                      ]),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: _pulse,
                  builder: (_, __) => Container(
                    width: 155 * _pulse.value,
                    height: 155 * _pulse.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        _kGold.withOpacity(0.2),
                        Colors.transparent
                      ]),
                    ),
                  ),
                ),
                // Floating, shimmering crown
                AnimatedBuilder(
                  animation: _float,
                  builder: (_, child) => Transform.translate(
                      offset: Offset(0, _float.value), child: child),
                  child: AnimatedBuilder(
                    animation: _shimmer,
                    builder: (_, child) => Container(
                      width: 104,
                      height: 104,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment(_shimmer.value - 1, -0.5),
                          end: Alignment(_shimmer.value, 0.5),
                          colors: const [
                            Color(0xFFFFD54F),
                            Color(0xFFFFB800),
                            Color(0xFFFFA000),
                            Color(0xFFFFD54F),
                          ],
                          stops: const [0.0, 0.35, 0.65, 1.0],
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: _kGold.withOpacity(0.7),
                              blurRadius: 45,
                              spreadRadius: 6),
                          BoxShadow(
                              color: _kRed.withOpacity(0.35),
                              blurRadius: 80,
                              spreadRadius: 14),
                        ],
                      ),
                      child: const Icon(Icons.workspace_premium_rounded,
                          color: Colors.white, size: 58),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Shimmer text
          AnimatedBuilder(
            animation: _shimmer,
            builder: (_, __) => ShaderMask(
              shaderCallback: (b) => LinearGradient(
                begin: Alignment(_shimmer.value - 1.5, 0),
                end: Alignment(_shimmer.value, 0),
                colors: const [
                  _kGold,
                  _kGoldLight,
                  Colors.white,
                  _kGoldLight,
                  _kGold
                ],
                stops: const [0.0, 0.25, 0.5, 0.75, 1.0],
              ).createShader(b),
              child: const Text(
                '100% GRATIS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 5),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Bergabung sebagai Premium Partner\n& nikmati keuntungan eksklusif tanpa biaya',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: 13.5, color: Colors.white60, height: 1.65),
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }

  // ── Content Card ─────────────────────────────────────────────────────────
  Widget _buildContentCard(BuildContext context, double bottomPad) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36), topRight: Radius.circular(36)),
      ),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 12),
          width: 40,
          height: 4,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(2)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 24, 20, bottomPad + 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFreeBanner(),
              const SizedBox(height: 22),
              _buildStats(),
              const SizedBox(height: 22),
              _buildTicker(),
              const SizedBox(height: 26),
              Row(children: [
                const Text('Keuntungan Premium',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1A1A1A))),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFF8E1),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text('5 Fitur',
                      style: TextStyle(
                          fontSize: 11,
                          color: _kGold,
                          fontWeight: FontWeight.w700)),
                ),
              ]),
              const SizedBox(height: 14),
              for (int i = 0; i < 5; i++)
                SlideTransition(
                  position: _slideAnims[i],
                  child: FadeTransition(
                    opacity: _fadeAnims[i],
                    child: [
                      _FeatureItem(
                          no: '01',
                          icon: Icons.trending_up_rounded,
                          color: _kRed,
                          title: 'Komisi Otomatis 5%',
                          desc:
                              'Komisi langsung masuk ke saldo setiap booking via link unikmu — tanpa proses manual'),
                      _FeatureItem(
                          no: '02',
                          icon: Icons.dashboard_customize_rounded,
                          color: const Color(0xFF1565C0),
                          title: 'Dashboard Real-Time',
                          desc:
                              'Pantau statistik lengkap: omzet, komisi, booking, dan grafik harian'),
                      _FeatureItem(
                          no: '03',
                          icon: Icons.confirmation_num_rounded,
                          color: const Color(0xFF2E7D32),
                          title: 'Harga Net Maskapai',
                          desc:
                              'Akses harga eksklusif partner dari semua maskapai domestik & internasional'),
                      _FeatureItem(
                          no: '04',
                          icon: Icons.headset_mic_rounded,
                          color: const Color(0xFF6A1B9A),
                          title: 'CS Prioritas 24/7',
                          desc:
                              'Antrian VIP dengan waktu respons rata-rata di bawah 5 menit setiap hari'),
                      _FeatureItem(
                          no: '05',
                          icon: Icons.share_rounded,
                          color: const Color(0xFFE65100),
                          title: 'Link Referral Unik',
                          desc:
                              'Bagikan link pribadimu dan dapat komisi otomatis dari setiap pembelian'),
                    ][i],
                  ),
                ),
              const SizedBox(height: 28),
              _buildCTA(context),
              const SizedBox(height: 10),
              const Center(
                  child: Text(
                'Gratis selamanya · Tidak ada kartu kredit yang dibutuhkan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Color(0xFF999999)),
              )),
            ],
          ),
        ),
      ]),
    );
  }

  // ── Free Banner ──────────────────────────────────────────────────────────
  Widget _buildFreeBanner() {
    return AnimatedBuilder(
      animation: Listenable.merge([_shimmer, _pulse]),
      builder: (_, __) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(_shimmer.value - 2, -0.5),
            end: Alignment(_shimmer.value, 0.5),
            colors: const [
              Color(0xFF7B0D07),
              Color(0xFFC42D27),
              Color(0xFFD32F2F),
              Color(0xFFC42D27)
            ],
            stops: const [0.0, 0.3, 0.6, 1.0],
          ),
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
                color:
                    _kRed.withOpacity(0.35 + (_pulse.value - 1.0).abs() * 0.15),
                blurRadius: 20 + (_pulse.value - 1.0).abs() * 12,
                offset: const Offset(0, 8))
          ],
        ),
        child: Stack(children: [
          Positioned(
              right: -15,
              top: -20,
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.06)))),
          Positioned(
              right: 20,
              bottom: -35,
              child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.04)))),
          Row(children: [
            Transform.scale(
              scale: 0.9 + (_pulse.value - 0.9) * 0.5,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.12),
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                ),
                child: ShaderMask(
                  shaderCallback: (b) =>
                      const LinearGradient(colors: [_kGoldLight, _kGold])
                          .createShader(b),
                  child: const Icon(Icons.workspace_premium_rounded,
                      color: Colors.white, size: 32),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (b) =>
                      const LinearGradient(colors: [_kGoldLight, _kGold])
                          .createShader(b),
                  child: const Text('PREMIUM GRATIS',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          letterSpacing: 0.5)),
                ),
                const SizedBox(height: 4),
                Text('Upgrade akunmu sekarang\ntanpa biaya apapun',
                    style: TextStyle(
                        fontSize: 12.5,
                        color: Colors.white.withOpacity(0.7),
                        height: 1.4)),
              ],
            )),
          ]),
        ]),
      ),
    );
  }

  // ── Stats with count-up ──────────────────────────────────────────────────
  Widget _buildStats() {
    return AnimatedBuilder(
      animation: _count,
      builder: (_, __) => Row(children: [
        _StatChip(
          displayValue: '${(_count.value * 5).toStringAsFixed(1)}%',
          label: 'Komisi',
          icon: Icons.percent_rounded,
          color: _kRed,
          pulse: _pulse,
        ),
        const SizedBox(width: 10),
        _StatChip(
          displayValue: '${(_count.value * 10).toStringAsFixed(0)}rb+',
          label: 'Partner',
          icon: Icons.people_rounded,
          color: const Color(0xFF1565C0),
          pulse: _pulse,
        ),
        const SizedBox(width: 10),
        _StatChip(
          displayValue:
              _count.value >= 0.95 ? '24/7' : '${(24 * _count.value).toInt()}h',
          label: 'Support',
          icon: Icons.support_agent_rounded,
          color: const Color(0xFF2E7D32),
          pulse: _pulse,
        ),
      ]),
    );
  }

  // ── Scrolling ticker ─────────────────────────────────────────────────────
  Widget _buildTicker() {
    const items = [
      '💰 Komisi otomatis',
      '✈️ Harga eksklusif',
      '📊 Dashboard real-time',
      '🎯 Link referral unik',
      '🛡️ Support 24/7',
      '🆓 100% Gratis',
    ];
    return SizedBox(height: 36, child: _TickerWidget(items: items));
  }

  // ── CTA ──────────────────────────────────────────────────────────────────
  Widget _buildCTA(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_shimmer, _pulse]),
      builder: (_, __) => Transform.scale(
        scale: 1.0 + (_pulse.value - 1.0) * 0.018,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(_shimmer.value - 2, -0.3),
              end: Alignment(_shimmer.value, 0.3),
              colors: const [_kRedDark, _kRed, Color(0xFFE53935), _kRed],
              stops: const [0.0, 0.33, 0.66, 1.0],
            ),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  color: _kRed
                      .withOpacity(0.5 + (_pulse.value - 1.0).abs() * 0.25),
                  blurRadius: 24 + (_pulse.value - 1.0).abs() * 16,
                  offset: const Offset(0, 10))
            ],
          ),
          child: ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('Selamat datang di Premium Partner! 🎉'),
                  behavior: SnackBarBehavior.floating),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ShaderMask(
                shaderCallback: (b) =>
                    const LinearGradient(colors: [_kGoldLight, _kGold])
                        .createShader(b),
                child: const Icon(Icons.workspace_premium_rounded,
                    color: Colors.white, size: 22),
              ),
              const SizedBox(width: 10),
              const Text('Upgrade Gratis Sekarang',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 0.3)),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward_rounded,
                  color: Colors.white70, size: 18),
            ]),
          ),
        ),
      ),
    );
  }
}

// ─── Background Painter (wave + particles) ────────────────────────────────────
class _BgPainter extends CustomPainter {
  final double wavePhase;
  final double particleT;
  final List<_Particle> particles;

  _BgPainter(
      {required this.wavePhase,
      required this.particleT,
      required this.particles});

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()..style = PaintingStyle.fill;

    // Base gradient
    p.shader = const LinearGradient(
      colors: [Color(0xFF0A0000), Color(0xFF1C0404), Color(0xFF2D0808)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), p);

    // Red glow
    p.shader = RadialGradient(
      colors: [const Color(0xFFC42D27).withOpacity(0.28), Colors.transparent],
    ).createShader(Rect.fromCircle(
        center: Offset(size.width * 0.85, size.height * 0.05), radius: 210));
    canvas.drawCircle(Offset(size.width * 0.85, size.height * 0.05), 210, p);

    // Gold glow
    p.shader = RadialGradient(
      colors: [const Color(0xFFFFB800).withOpacity(0.1), Colors.transparent],
    ).createShader(Rect.fromCircle(
        center: Offset(size.width * 0.1, size.height * 0.28), radius: 160));
    canvas.drawCircle(Offset(size.width * 0.1, size.height * 0.28), 160, p);

    // Wave lines
    final wavePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;
    for (int w = 0; w < 3; w++) {
      final path = Path();
      final yBase = size.height * (0.18 + w * 0.08);
      final amp = 12.0 + w * 6;
      final freq = 0.015 + w * 0.005;
      final phaseOffset = wavePhase + w * (math.pi / 2);
      path.moveTo(0, yBase);
      for (double x = 0; x <= size.width; x += 2) {
        final y = yBase + math.sin(x * freq + phaseOffset) * amp;
        path.lineTo(x, y);
      }
      wavePaint.color = (w == 1 ? _kGold : _kRed).withOpacity(0.06 - w * 0.01);
      canvas.drawPath(path, wavePaint);
    }

    // Animated floating particles
    p.shader = null;
    for (final pt in particles) {
      final px = (pt.x + particleT * pt.vx * 120) % 1.0;
      final py = (pt.y + particleT * pt.vy * 120) % 0.55;
      p.color = pt.color.withOpacity(pt.opacity *
          (0.5 + 0.5 * math.sin(particleT * 2 * math.pi + pt.x * 10)));
      canvas.drawCircle(
          Offset(px * size.width, py * size.height), pt.radius, p);
    }
  }

  @override
  bool shouldRepaint(_BgPainter old) =>
      old.wavePhase != wavePhase || old.particleT != particleT;
}

// ─── Ticker Widget ────────────────────────────────────────────────────────────
class _TickerWidget extends StatefulWidget {
  final List<String> items;
  const _TickerWidget({required this.items});

  @override
  State<_TickerWidget> createState() => _TickerWidgetState();
}

class _TickerWidgetState extends State<_TickerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 18))
          ..repeat();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fullText = widget.items.join('   ·   ');
    return ClipRect(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1A0505),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: _kRed.withOpacity(0.22)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AnimatedBuilder(
            animation: _ctrl,
            builder: (_, __) => Transform.translate(
              offset: Offset(-_ctrl.value * 700, 0),
              child: Text(
                '$fullText   ·   $fullText   ·   $fullText',
                style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ─── Stat Chip ────────────────────────────────────────────────────────────────
class _StatChip extends StatelessWidget {
  final String displayValue;
  final String label;
  final IconData icon;
  final Color color;
  final Animation<double> pulse;

  const _StatChip(
      {required this.displayValue,
      required this.label,
      required this.icon,
      required this.color,
      required this.pulse});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedBuilder(
        animation: pulse,
        builder: (_, child) => Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  color:
                      color.withOpacity(0.07 + (pulse.value - 1.0).abs() * 0.1),
                  blurRadius: 14 + (pulse.value - 1.0).abs() * 8,
                  offset: const Offset(0, 4))
            ],
          ),
          child: child,
        ),
        child: Column(children: [
          Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  color: color.withOpacity(0.1), shape: BoxShape.circle),
              child: Icon(icon, color: color, size: 20)),
          const SizedBox(height: 8),
          Text(displayValue,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF1A1A1A))),
          const SizedBox(height: 2),
          Text(label,
              style: const TextStyle(fontSize: 10, color: Color(0xFFAAAAAA))),
        ]),
      ),
    );
  }
}

// ─── Feature Item ─────────────────────────────────────────────────────────────
class _FeatureItem extends StatelessWidget {
  final String no, title, desc;
  final IconData icon;
  final Color color;

  const _FeatureItem(
      {required this.no,
      required this.icon,
      required this.color,
      required this.title,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 3))
        ],
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14)),
          child: Stack(children: [
            Center(child: Icon(icon, color: color, size: 24)),
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                child: Center(
                    child: Text(no,
                        style: const TextStyle(
                            fontSize: 7,
                            color: Colors.white,
                            fontWeight: FontWeight.w900))),
              ),
            ),
          ]),
        ),
        const SizedBox(width: 14),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A1A))),
          const SizedBox(height: 4),
          Text(desc,
              style: const TextStyle(
                  fontSize: 12, color: Color(0xFF777777), height: 1.5)),
        ])),
      ]),
    );
  }
}
