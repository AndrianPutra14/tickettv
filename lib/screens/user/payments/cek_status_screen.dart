import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color _kRed = Color(0xFFC42D27);
const Color _kGreen = Color(0xFF27AE60);

class CekStatusScreen extends StatelessWidget {
  const CekStatusScreen({super.key});

  void _copy(BuildContext context, String text, String label) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$label disalin'),
      duration: const Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      // Layer 1: Background PUTIH
      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: _kRed,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 22),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text('Transaksi',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 14),
        child: Container(
          // Layer 2: Card MERAH
          decoration: const BoxDecoration(
            color: _kRed,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          padding: EdgeInsets.only(
              top: 10, left: 10, right: 10, bottom: bottomPad + 10),
          child: Container(
            // Layer 3: Card PUTIH
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                // ── Scrollable content ─────────────────────────────────
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // ── Ikon sukses ─────────────────────────────────
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: _kGreen,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.check_rounded,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        const SizedBox(height: 16),

                        // ── Judul ────────────────────────────────────────
                        const Text(
                          'Pembayaran Berhasil!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Transaction ID 4352 2748 3920',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Kamis, 12 Februari 2026 10:05',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF777777)),
                        ),
                        const SizedBox(height: 20),

                        // ── Payment Methods header ───────────────────────
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Payment Methods',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // ── Detail rows ──────────────────────────────────
                        _detailRow(
                          label: 'Kode Booking',
                          value: 'F9A4ZT',
                          hasCopy: true,
                          onCopy: () =>
                              _copy(context, 'F9A4ZT', 'Kode Booking'),
                        ),
                        _divider(),
                        _detailRow(label: 'Rute', value: 'CGK → SUB'),
                        _divider(),
                        _detailRow(
                            label: 'Maskapai',
                            value: 'Lion Air',
                            valueBold: true),
                        _divider(),
                        _detailRow(
                            label: 'Metode Pembayaran',
                            value: 'Qris',
                            valueBold: true),
                        _divider(),
                        _detailRow(
                            label: 'Nominal',
                            value: 'Rp. 10.220.420',
                            valueBold: true),
                        _divider(),
                        _detailRow(
                            label: 'Fee', value: 'Rp. 20.000', valueBold: true),
                        _divider(),
                        _detailRow(
                            label: 'Status', value: 'Success', valueBold: true),

                        const SizedBox(height: 20),

                        // ── Pesan konfirmasi ─────────────────────────────
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Mohon tunggu beberapa menit.\nKami akan kirim e-ticket ke email anda',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF555555),
                                height: 1.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Buttons pinned di bawah ────────────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: _kRed, width: 1.5),
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white,
                          ),
                          child: const Text('Cek Status Transfer',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: _kRed)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () =>
                              Navigator.popUntil(context, (r) => r.isFirst),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: _kRed,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text('Halaman Utama',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _divider() =>
      const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE));

  Widget _detailRow({
    required String label,
    required String value,
    bool valueBold = false,
    bool hasCopy = false,
    VoidCallback? onCopy,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Row(
        children: [
          Expanded(
            child: Text(label,
                style: const TextStyle(fontSize: 13, color: Color(0xFF555555))),
          ),
          if (hasCopy)
            GestureDetector(
              onTap: onCopy,
              child: const Padding(
                padding: EdgeInsets.only(right: 6),
                child: Icon(Icons.copy_rounded,
                    size: 15, color: Color(0xFF888888)),
              ),
            ),
          Text(
            value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: valueBold ? FontWeight.w700 : FontWeight.w600,
              color: const Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}
