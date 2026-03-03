import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

const Color primaryRed = Color(0xFFC42D27);

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryRed,
      body: Column(
        children: [
          // ── Top section: red background + airplane & ticket ──
          Expanded(
            flex: 62,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                // Tiket di belakang pesawat
                Positioned(
                  bottom: 60,
                  child: Transform.rotate(
                    angle: -0.08,
                    child: Image.asset(
                      'assets/images/ticket.png',
                      width: size.width * 0.82,
                    ),
                  ),
                ),
                // Pesawat di atas tiket
                Positioned(
                  bottom: 180,
                  child: Image.asset(
                    'assets/images/airplane.png',
                    width: size.width * 0.78,
                  ),
                ),
              ],
            ),
          ),

          // ── Bottom section: white card ──
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(28, 32, 28, 40),
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
                // Judul
                const Text(
                  'WELCOME TO EZYTIX',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1A1A1A),
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),

                // Subjudul
                const Text(
                  'Rencanakan perjalanan Anda dengan\npenerbangan terbaik',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF757575),
                    height: 1.6,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 28),

                // Tombol Lanjut
                SizedBox(
                  width: double.infinity,
                  height: 52,
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
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'Lanjut',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
