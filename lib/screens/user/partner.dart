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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: _kRed,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.07),
                      _buildGreeting(),
                      SizedBox(height: screenHeight * 0.02),

                      /// ruang untuk banner
                      SizedBox(height: screenHeight * 0.22),
                    ],
                  ),
                ),
              ),

              /// Bottom putih
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

                        const SizedBox(height: 70),
                        _buildBenefitCard(),
                        const SizedBox(height: 20),
                        _buildInformationSection(),
                        const SizedBox(height: 8),

                        SizedBox(height: screenHeight * 0.08),
                        _buildBenefitCard(),
                        const SizedBox(height: 20),
                        _buildInformationSection(),
                        // (update welcome screen)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// Banner di tengah
          Positioned(

            left: 15,
            right: 15,
            bottom:
                MediaQuery.of(context).size.height * 0.54, // sesuaikan posisi
            child: _buildPremiumBanner(),

            left: 20,
            right: 20,
            bottom: screenHeight * 0.52,
            child: _buildPremiumBanner(context),
// (update welcome screen)
          ),
        ],
      ),
    );
  }

  /// Greeting
  Widget _buildGreeting() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
      child: Text(
        'Halo, Teman Ezytix !',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }


  // ─── Premium Banner ────────────────────────────────────────────────────────
  Widget _buildPremiumBanner() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Container(
          width: 330,
          height: 179,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 325,
                  height: 179,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.50),
                      end: Alignment(-0.00, 0.50),
                      colors: [
                        const Color(0xFFF18985),
                        const Color(0xFFC42D27)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 29.72,
                top: 16.25,
                child: SizedBox(
                  width: 215.15,
                  height: 30.65,
                  child: Text(
                    'Premium',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 56,
                child: SizedBox(
                  width: 278,
                  height: 40,
                  child: Text(
                    'Upgrade ke Premium Partner & Dapatkan Deviden dari Setiap Tiket Terjual. ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 114,
                child: Container(
                  width: 179,
                  height: 40,
                  padding: const EdgeInsets.all(12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(21),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Text(
                        'Daftar Menjadi Partner',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 335,
                top: 118,
                child: Container(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateX(9)
                    ..rotateZ(3.09),
                  width: 132.31,
                  height: 81.30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/airplane.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));

  /// Premium Banner (Responsive)
  Widget _buildPremiumBanner(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xFFF18985),
            Color(0xFFC42D27),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          /// Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Premium",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Upgrade ke Premium Partner & Dapatkan Deviden dari Setiap Tiket Terjual.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),

                /// Button
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Text(
                    "Daftar Menjadi Partner",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(width: 10),

          /// Gambar pesawat
          Image.asset(
            "assets/images/airplane.png",
            width: width * 0.25,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
// (update welcome screen)
  }

  /// Benefit Card
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
              children: [
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
                        'Cek Penawaran dari Ezytix Premium!',
                        style: TextStyle(
                          fontSize: 14,
                          color: _kDivider,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Badge
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB8860B),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            const SizedBox(height: 10),

// (update welcome screen)
            ...[
              'Harga Lebih kompetitif',
              'Dashboard khusus Partner',
              'Support Prioritas',
              'Deviden dari setiap Tiket',
            ].map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 2),

                  padding: const EdgeInsets.only(bottom: 4),
// (update welcome screen)
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

  /// Information Section
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
              const Divider(height: 1, thickness: 1, color: _kDivider),
              _buildInfoItem(
                icon: Icons.info_outline_rounded,
                label: 'Pusat Bantuan',
              ),
              const Divider(height: 1, thickness: 1, color: _kDivider),
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
    return ClipOval(
      child: SizedBox(
        width: 28,
        height: 28,
        child: CustomPaint(painter: _IndonesiaFlagPainter()),
      ),
    );
  }
}

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

    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(
        center, size.width / 2 - borderPaint.strokeWidth / 2, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
}