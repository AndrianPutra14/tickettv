import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cek_status_screen.dart';

const Color _kRed = Color(0xFFC42D27);
const Color _kGreen = Color(0xFF27AE60);
const Color _kOrange = Color(0xFFE67E22);

class TransaksiScreen extends StatefulWidget {
  final String bankName;
  const TransaksiScreen({super.key, required this.bankName});

  @override
  State<TransaksiScreen> createState() => _TransaksiScreenState();
}

class _TransaksiScreenState extends State<TransaksiScreen> {
  late Timer _timer;
  int _totalSeconds = 27 * 60 + 47;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_totalSeconds > 0)
        setState(() => _totalSeconds--);
      else
        _timer.cancel();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String get _jam => (_totalSeconds ~/ 3600).toString();
  String get _menit =>
      ((_totalSeconds % 3600) ~/ 60).toString().padLeft(2, '0');
  String get _detik => (_totalSeconds % 60).toString().padLeft(2, '0');

  void _copy(String text, String label) {
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
        // Hanya atas yang ada jarak (menampilkan sedikit putih di atas card merah)
        padding: const EdgeInsets.only(top: 14),
        child: Container(
          // Layer 2: Card MERAH (bingkai luar)
          decoration: BoxDecoration(
            color: _kRed,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
          ),
          padding: EdgeInsets.only(
              top: 10, left: 10, right: 10, bottom: bottomPad + 10),
          child: Container(
            // Layer 3: Card PUTIH (konten)
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Column(
              children: [
                // ── Scrollable content ───────────────────────────────────
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // BCA Logo + nama bank
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEEF3FC),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                    color: const Color(0xFFCCDDF5), width: 0.8),
                              ),
                              child: const Text('BCA',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF003DA5),
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 1)),
                            ),
                            const SizedBox(width: 12),
                            const Text('Bank Central Asia',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF1A1A1A))),
                          ],
                        ),
                        const SizedBox(height: 10),

                        const Text('Selesaikan Pembayaran Dalam',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A1A1A))),
                        const SizedBox(height: 4),

                        Text('$_jam jam : $_menit menit : $_detik detik',
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: _kOrange)),
                        const SizedBox(height: 3),

                        const Text('Batas Akhir Pembayaran',
                            style: TextStyle(
                                fontSize: 11, color: Color(0xFF999999))),
                        const SizedBox(height: 2),
                        const Text('Kamis, 12 Februari 2026 10:33',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1A1A1A))),
                        const SizedBox(height: 12),

                        // Info card
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFDDDDDD)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              _infoRow('Nomor Rekening', '6043311234',
                                  sub: 'PT Voltras Travel',
                                  copy: () =>
                                      _copy('6043311234', 'Nomor Rekening')),
                              _div(),
                              _infoRow('Nominal', 'Rp.10.220.420'),
                              _div(),
                              _infoRow('Biaya Admin', 'Rp.143'),
                              _div(),
                              _infoRow(
                                  'Jumlah Harus Dibayarkan', 'Rp.10.220.563',
                                  red: true,
                                  copy: () => _copy(
                                      '10220563', 'Jumlah Harus Dibayarkan')),
                              _div(),
                              _infoRow('Keterangan',
                                  'YIAVA0060 F9A4ZT - ISSUED AIRLINE',
                                  sub: 'Kamis, 12 Februari 2026 10:05',
                                  copy: () => _copy(
                                      'YIAVA0060 F9A4ZT - ISSUED AIRLINE',
                                      'Keterangan')),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),

                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Keterangan :',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1A1A1A))),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF0F0),
                            border: Border.all(color: const Color(0xFFFFCCCC)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _NoteItem('1.',
                                  'Silahkan Transfer sesuai jumlah harus dibayarkan'),
                              SizedBox(height: 5),
                              _NoteItem('2.',
                                  'Lakukan Transfer dana sebelum jam 21.00 WIB pada hari yang sama'),
                              SizedBox(height: 5),
                              _NoteItem('3.',
                                  'Nominal Jumlah Transfer yang di create hanya berlaku untuk 1 (satu) kali transfer'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ── Tombol pinned di bawah card putih ─────────────────────
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 14),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const CekStatusScreen(),
                              ),
                            );
                          },
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

  Widget _div() =>
      const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE));

  Widget _infoRow(String label, String value,
      {String? sub, bool red = false, VoidCallback? copy}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: const TextStyle(
                        fontSize: 11, color: Color(0xFF999999))),
                const SizedBox(height: 2),
                Text(value,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: red ? _kRed : const Color(0xFF1A1A1A))),
                if (sub != null) ...[
                  const SizedBox(height: 1),
                  Text(sub,
                      style: const TextStyle(
                          fontSize: 11, color: Color(0xFF777777))),
                ],
              ],
            ),
          ),
          if (copy != null)
            GestureDetector(
              onTap: copy,
              child: const Row(
                children: [
                  Text('Salin',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: _kGreen)),
                  SizedBox(width: 3),
                  Icon(Icons.copy_rounded, size: 13, color: _kGreen),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

// ─── Note Item ────────────────────────────────────────────────────────────────
class _NoteItem extends StatelessWidget {
  final String number;
  final String text;
  const _NoteItem(this.number, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(number,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333))),
        const SizedBox(width: 6),
        Expanded(
          child: Text(text,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF333333))),
        ),
      ],
    );
  }
}
