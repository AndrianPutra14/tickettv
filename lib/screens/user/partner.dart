import 'package:flutter/material.dart';

const _kRed = Color(0xFFC42D27);
const _kBg = Color(0xFFF7F7F7);
const _kTextDark = Color(0xFF1A1A1A);
const _kTextGrey = Color(0xFF9E9E9E);
const _kDivider = Color(0xFFEEEEEE);

class PartnerPage extends StatelessWidget {
  const PartnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kRed,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Red top area ──────────────────────────────────────────
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 55),
                      _buildGreeting(),
                      const SizedBox(height: 20),
                      // Space placeholder setinggi banner agar konten tidak tertutup
                      const SizedBox(height: 180),
                    ],
                  ),
                ),
              ),
              // ── White bottom area ─────────────────────────────────────
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  color: _kBg,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Space di atas agar tidak tertutup banner
                        const SizedBox(height: 90),
                        _buildBenefitCard(),
                        const SizedBox(height: 24),
                        _buildInformationSection(),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ── Banner nimpa di tengah-tengah ─────────────────────────────
          Positioned(
            left: 16,
            right: 16,
            bottom:
                MediaQuery.of(context).size.height * 0.53, // sesuaikan posisi
            child: _buildPremiumBanner(),
          ),
        ],
      ),
    );
  }

  // ─── Greeting ──────────────────────────────────────────────────────────────
  Widget _buildGreeting() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: [
            TextSpan(text: 'Halo, Teman Ezytix !'),
          ],
        ),
      ),
    );
  }

  // ─── Premium Banner ────────────────────────────────────────────────────────
  Widget _buildPremiumBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          gradient: const LinearGradient(
            colors: [Color(0xFFD32F2F), Color(0xFFE57373)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Premium',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Upgrade ke Premium Partner & Dapatkan\nDeviden dari Setiap Tiket Terjual.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                    ),
                    child: const Text(
                      'Daftar Menjadi Partner',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Airplane image
            SizedBox(
              width: 110,
              child: Transform.scale(
                scaleX: -1.3,
                scaleY: 1.5, // naikan angka ini untuk perbesar
                child: Image.asset(
                  'assets/images/airplane.png',
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Icon(
                    Icons.flight,
                    size: 150,
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─── Benefit Card ──────────────────────────────────────────────────────────
  Widget _buildBenefitCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFC42D27), Color(0xFFF0C040)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Lihat Benefit Premium disini !',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: _kDivider,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Cek Penawaran dari Ezytix Preium!',
                        style: TextStyle(
                          fontSize: 14,
                          color: _kDivider,
                        ),
                      ),
                    ],
                  ),
                ),
                // PREMIUM badge
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB8860B),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.workspace_premium_rounded,
                          size: 13, color: Colors.amber),
                      SizedBox(width: 4),
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...[
              'Harga Lebih kompetitif',
              'Dashboard khusus Partner',
              'Support Prioritas',
              'Deviden dari setiap Tiket',
            ].map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      const Text('• ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: _kDivider)),
                      Text(
                        item,
                        style: const TextStyle(
                          fontSize: 13,
                          color: _kDivider,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  // ─── Information Section ───────────────────────────────────────────────────
  Widget _buildInformationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 12),
          child: Text(
            'Information',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: _kTextDark,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              _buildInfoItem(
                icon: Icons.language_rounded,
                label: 'Bahasa',
                trailing: _buildFlagWidget(),
              ),
              const Divider(
                  height: 1, thickness: 1, color: _kDivider, indent: 56),
              _buildInfoItem(
                icon: Icons.info_outline_rounded,
                label: 'Pusat Bantuan',
              ),
              const Divider(
                  height: 1, thickness: 1, color: _kDivider, indent: 56),
              _buildInfoItem(
                icon: Icons.headset_mic_outlined,
                label: 'Hubungi Kami',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoItem({
    required IconData icon,
    required String label,
    Widget? trailing,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        children: [
          Icon(icon, size: 24, color: _kTextDark),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: _kTextDark,
              ),
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }

  Widget _buildFlagWidget() {
    // Indonesia flag: red top half, white bottom half in a circle
    return ClipOval(
      child: SizedBox(
        width: 28,
        height: 28,
        child: CustomPaint(painter: _IndonesiaFlagPainter()),
      ),
    );
  }
}

// ─── Indonesia Flag Painter ───────────────────────────────────────────────────
class _IndonesiaFlagPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final redPaint = Paint()..color = const Color(0xFFCE1126);
    final whitePaint = Paint()..color = Colors.white;
    final borderPaint = Paint()
      ..color = const Color.fromARGB(255, 25, 25, 25)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height / 2), redPaint);
    canvas.drawRect(
        Rect.fromLTWH(0, size.height / 2, size.width, size.height / 2),
        whitePaint);

    // Draw circular border
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(
        center, size.width / 2 - borderPaint.strokeWidth / 2, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}
