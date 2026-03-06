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
    final double s = MediaQuery.of(context).size.width;
    final double r = s / 390;

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
                      SizedBox(height: 55 * r),
                      _buildGreeting(r),
                      SizedBox(height: 20 * r),
                      // Space placeholder setinggi banner agar konten tidak tertutup
                      SizedBox(height: 180 * r),
                    ],
                  ),
                ),
              ),
              // ── White bottom area ─────────────────────────────────────
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20 * r),
                  topRight: Radius.circular(20 * r),
                ),
                child: Container(
                  color: _kBg,
                  padding: EdgeInsets.symmetric(vertical: 16 * r),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 90 * r),
                        _buildBenefitCard(r),
                        SizedBox(height: 20 * r),
                        _buildInformationSection(r),
                        SizedBox(height: 8 * r),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ── Banner nimpa di tengah-tengah ─────────────────────────────
          Positioned(
            left: 15 * r,
            right: 15 * r,
            bottom: MediaQuery.of(context).size.height * 0.54,
            child: _buildPremiumBanner(r),
          ),
        ],
      ),
    );
  }

  // ─── Greeting ──────────────────────────────────────────────────────────────
  Widget _buildGreeting(double r) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20 * r, 24 * r, 20 * r, 0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 24 * r,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: const [
            TextSpan(text: 'Halo, Teman Ezytix !'),
          ],
        ),
      ),
    );
  }

  // ─── Premium Banner ────────────────────────────────────────────────────────
  Widget _buildPremiumBanner(double r) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14 * r),
      child: SizedBox(
        width: 330 * r,
        height: 179 * r,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 325 * r,
                height: 179 * r,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(1.00, 0.50),
                    end: Alignment(-0.00, 0.50),
                    colors: [Color(0xFFF18985), Color(0xFFC42D27)],
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(15 * r),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 29.72 * r,
              top: 16.25 * r,
              child: SizedBox(
                width: 215.15 * r,
                height: 30.65 * r,
                child: Text(
                  'Premium',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30 * r,
              top: 56 * r,
              child: SizedBox(
                width: 278 * r,
                height: 40 * r,
                child: Text(
                  'Upgrade ke Premium Partner & Dapatkan Deviden dari Setiap Tiket Terjual. ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 19 * r,
              top: 114 * r,
              child: Container(
                width: 150 * r,
                height: 38 * r,
                padding: EdgeInsets.all(8 * r),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white.withValues(alpha: 0.25),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(21 * r),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Daftar Menjadi Partner',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12 * r,
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
              left: 335 * r,
              top: 118 * r,
              child: Container(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateX(9)
                  ..rotateZ(3.09),
                width: 132.31 * r,
                height: 81.30 * r,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/airplane.png'),
                    fit: BoxFit.cover,
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
  Widget _buildBenefitCard(double r) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16 * r),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFC42D27), Color(0xFFF0C040)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(14 * r),
        ),
        padding: EdgeInsets.all(16 * r),
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
                    children: [
                      Text(
                        'Lihat Benefit Premium disini !',
                        style: TextStyle(
                          fontSize: 14 * r,
                          fontWeight: FontWeight.bold,
                          color: _kDivider,
                        ),
                      ),
                      SizedBox(height: 3 * r),
                      Text(
                        'Cek Penawaran dari Ezytix Preium!',
                        style: TextStyle(
                          fontSize: 14 * r,
                          color: _kDivider,
                        ),
                      ),
                    ],
                  ),
                ),
                // PREMIUM badge
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10 * r, vertical: 5 * r),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB8860B),
                    borderRadius: BorderRadius.circular(6 * r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.workspace_premium_rounded,
                          size: 13 * r, color: Colors.amber),
                      SizedBox(width: 4 * r),
                      Text(
                        'PREMIUM',
                        style: TextStyle(
                          fontSize: 11 * r,
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
            SizedBox(height: 8 * r),
            ...[
              'Harga Lebih kompetitif',
              'Dashboard khusus Partner',
              'Support Prioritas',
              'Deviden dari setiap Tiket',
            ].map((item) => Padding(
                  padding: EdgeInsets.only(bottom: 2 * r),
                  child: Row(
                    children: [
                      Text('• ',
                          style: TextStyle(
                              fontSize: 14 * r,
                              fontWeight: FontWeight.w700,
                              color: _kDivider)),
                      Text(
                        item,
                        style: TextStyle(
                          fontSize: 13 * r,
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
  Widget _buildInformationSection(double r) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20 * r, 0, 20 * r, 12 * r),
          child: Text(
            'Information',
            style: TextStyle(
              fontSize: 16 * r,
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
                trailing: _buildFlagWidget(r),
                r: r,
              ),
              Divider(
                  height: 1, thickness: 1, color: _kDivider, indent: 56 * r),
              _buildInfoItem(
                icon: Icons.info_outline_rounded,
                label: 'Pusat Bantuan',
                r: r,
              ),
              Divider(
                  height: 1, thickness: 1, color: _kDivider, indent: 56 * r),
              _buildInfoItem(
                icon: Icons.headset_mic_outlined,
                label: 'Hubungi Kami',
                r: r,
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
    required double r,
    Widget? trailing,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 * r, vertical: 14 * r),
      child: Row(
        children: [
          Icon(icon, size: 24 * r, color: _kTextDark),
          SizedBox(width: 16 * r),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15 * r,
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

  Widget _buildFlagWidget(double r) {
    return ClipOval(
      child: SizedBox(
        width: 28 * r,
        height: 28 * r,
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

    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(
        center, size.width / 2 - borderPaint.strokeWidth / 2, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}
