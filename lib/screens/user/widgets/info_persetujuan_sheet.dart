import 'package:flutter/material.dart';
import 'package:project1/utils/routes.dart';

const Color _kRed = Color(0xFFC42D27);

/// Bottom sheet "Info Persetujuan Penerbangan"
/// — style mengikuti _CopyFareSummarySheet di fare_detail_sheet.dart
class InfoPersetujuanSheet extends StatelessWidget {
  final VoidCallback? onKonfirmasi;

  const InfoPersetujuanSheet({super.key, this.onKonfirmasi});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Header ──────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 0, 10),
            child: Row(
              children: [
                const Icon(Icons.info_outline_rounded,
                    size: 25, color: Color(0xFF555555)),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Info Persetujuan Penerbangan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                // Close button — Ellipseyell style (sama seperti _CopyFareSummarySheet)
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Ellipseyell.png',
                        width: 60,
                        height: 45,
                        fit: BoxFit.fill,
                      ),
                      const Icon(Icons.close,
                          size: 26, color: Color(0xFF0F0F0F)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFE0E0E0)),

          // ── Body dengan watermark lingkaran besar ────────────────────────
          SizedBox(
            height: 310,
            child: Stack(
              children: [
                // Lingkaran watermark merah — posisi kiri atas (mirip CopyFareSummarySheet)
                Positioned(
                  left: -120,
                  top: -30,
                  child: Container(
                    width: 420,
                    height: 420,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _kRed.withOpacity(0.10),
                    ),
                  ),
                ),

                // Konten teks
                SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Paragraf pembuka (bold)
                      const Text(
                        'Sebelum melakukan pemesanan, pastikan penumpang telah memenuhi persyaratan berikut:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A),
                          height: 1.55,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Bullet points
                      _bulletItem(
                          'Memiliki kelengkapan dokumen yang disyaratkan oleh pemerintah untuk melakukan penerbangan'),
                      _bulletItem(
                          'Mematuhi peraturan yang berlaku di daerah asal dan tujuan penerbangan'),
                      _bulletItem(
                          'Menerapkan protokol kesehatan yang ditentukan oleh pemerintah'),

                      const SizedBox(height: 10),

                      // Paragraf tanggung jawab
                      const Text(
                        'Kegagalan penumpang melakukan penerbangan dikarenakan kurangnya kelengkapan dokumen yang disyaratkan, sepenuhnya menjadi tanggung jawab penumpang',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF1A1A1A),
                          height: 1.55,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Pernyataan persetujuan (bold)
                      const Text(
                        'Dengan ini saya menyatakan telah membaca, memahami, dan setuju dengan hal-hal yang tercantum diatas',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A),
                          height: 1.55,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ── Card + Tombol Konfirmasi (style Card CopyFareSummarySheet) ──
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE0E0E0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // tutup InfoPersetujuanSheet
                  Navigator.pushNamed(context, AppRoutes.bookingDetail);
                  onKonfirmasi?.call();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _kRed,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Konfirmasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _bulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 6, right: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF1A1A1A),
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF1A1A1A),
                height: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
