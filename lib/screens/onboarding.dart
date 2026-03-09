import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

const Color primaryRed = Color(0xFFC42D27);

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  // ── Controllers ──────────────────────────────────────────────────────────
  late final AnimationController _entryCtrl;
  late final AnimationController _floatCtrl;
  late final AnimationController _cardCtrl;

  // Entry animations
  late final Animation<double> _ticketFade;
  late final Animation<Offset> _ticketSlide;
  late final Animation<double> _planeFade;
  late final Animation<Offset> _planeSlide;

  // Floating bob for the airplane
  late final Animation<double> _float;

  // Card slide-up & fade
  late final Animation<double> _cardFade;
  late final Animation<Offset> _cardSlide;

  // Button pulse
  late final AnimationController _pulseCtrl;
  late final Animation<double> _pulse;

  @override
  void initState() {
    super.initState();

    // ── Entry controller (runs once) ──────────────────────────────────────
    _entryCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    _ticketFade = CurvedAnimation(
      parent: _entryCtrl,
      curve: const Interval(0.0, 0.55, curve: Curves.easeOut),
    );
    _ticketSlide = Tween<Offset>(
      begin: const Offset(0.3, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _entryCtrl,
      curve: const Interval(0.0, 0.55, curve: Curves.easeOut),
    ));

    _planeFade = CurvedAnimation(
      parent: _entryCtrl,
      curve: const Interval(0.3, 0.85, curve: Curves.easeOut),
    );
    _planeSlide = Tween<Offset>(
      begin: const Offset(-0.4, -0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _entryCtrl,
      curve: const Interval(0.3, 0.85, curve: Curves.easeOut),
    ));

    // ── Float controller (continuous) ─────────────────────────────────────
    _floatCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat(reverse: true);

    _float = Tween<double>(begin: -8.0, end: 8.0).animate(
      CurvedAnimation(parent: _floatCtrl, curve: Curves.easeInOut),
    );

    // ── Card controller ───────────────────────────────────────────────────
    _cardCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _cardFade = CurvedAnimation(
      parent: _cardCtrl,
      curve: Curves.easeOut,
    );
    _cardSlide = Tween<Offset>(
      begin: const Offset(0, 0.25),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _cardCtrl, curve: Curves.easeOut));

    // ── Pulse controller (continuous) ─────────────────────────────────────
    _pulseCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _pulse = Tween<double>(begin: 1.0, end: 1.04).animate(
      CurvedAnimation(parent: _pulseCtrl, curve: Curves.easeInOut),
    );

    // Start sequence
    _entryCtrl.forward().then((_) => _cardCtrl.forward());
  }

  @override
  void dispose() {
    _entryCtrl.dispose();
    _floatCtrl.dispose();
    _cardCtrl.dispose();
    _pulseCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double w = size.width;
    final double h = size.height;

    // Responsive scale factor (baseline 375 × 812)
    final double scaleW = w / 375;
    final double scaleH = h / 812;
    final double scale = min(scaleW, scaleH);

    return Scaffold(
      backgroundColor: primaryRed,
      body: Stack(
        children: [
          // ── Decorative circles ──────────────────────────────────────────
          Positioned(
            top: -h * 0.08,
            right: -w * 0.18,
            child: _Circle(diameter: w * 0.55, opacity: 0.08),
          ),
          Positioned(
            top: h * 0.04,
            left: -w * 0.22,
            child: _Circle(diameter: w * 0.42, opacity: 0.06),
          ),

          // ── Main content ────────────────────────────────────────────────
          Column(
            children: [
              // ── Top: airplane + ticket ──────────────────────────────────
              Expanded(
                flex: 60,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    // Ticket
                    Positioned(
                      bottom: h * 0.05,
                      child: FadeTransition(
                        opacity: _ticketFade,
                        child: SlideTransition(
                          position: _ticketSlide,
                          child: Transform.rotate(
                            angle: -0.08,
                            child: Image.asset(
                              'assets/images/ticket.png',
                              width: w * 0.82,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Airplane (with float animation)
                    Positioned(
                      bottom: h * 0.17,
                      child: FadeTransition(
                        opacity: _planeFade,
                        child: SlideTransition(
                          position: _planeSlide,
                          child: AnimatedBuilder(
                            animation: _float,
                            builder: (_, child) => Transform.translate(
                              offset: Offset(0, _float.value),
                              child: child,
                            ),
                            child: Image.asset(
                              'assets/images/airplane.png',
                              width: w * 0.78,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ── Bottom white card ───────────────────────────────────────
              FadeTransition(
                opacity: _cardFade,
                child: SlideTransition(
                  position: _cardSlide,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(
                      28 * scaleW,
                      32 * scaleH,
                      28 * scaleW,
                      max(40 * scaleH,
                          MediaQuery.of(context).viewPadding.bottom + 24),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Indicator dots
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (i) {
                            final bool active = i == 0;
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: active ? 24 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: active
                                    ? primaryRed
                                    : const Color(0xFFE0E0E0),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: 20 * scaleH),

                        // Title
                        Text(
                          'WELCOME TO EZYTIX',
                          style: TextStyle(
                            fontSize: 22 * scale,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF1A1A1A),
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10 * scaleH),

                        // Subtitle
                        Text(
                          'Rencanakan perjalanan Anda dengan\npenerbangan terbaik',
                          style: TextStyle(
                            fontSize: 14 * scale,
                            color: const Color(0xFF757575),
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 28 * scaleH),

                        // Button with pulse scale
                        ScaleTransition(
                          scale: _pulse,
                          child: SizedBox(
                            width: double.infinity,
                            height: 52 * scaleH,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  AppRoutes.home,
                                  (route) => false,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryRed,
                                elevation: 4,
                                shadowColor: primaryRed.withOpacity(0.4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              child: Text(
                                'Mulai Sekarang',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16 * scale,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Simple semi-transparent decorative circle
class _Circle extends StatelessWidget {
  const _Circle({required this.diameter, required this.opacity});
  final double diameter;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(opacity),
      ),
    );
  }
}
