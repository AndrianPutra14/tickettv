import 'package:flutter/material.dart';
import 'flight_models.dart';

class FareDetailSheet extends StatelessWidget {
  final FareModel fare;
  final FlightModel flight;
  const FareDetailSheet({required this.fare, required this.flight});

  @override
  Widget build(BuildContext context) {
    final totalPrice = fare.price * 1000;

    return Container(
      margin: const EdgeInsets.only(top: 60),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // â”€â”€ Header FARE â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            decoration: const BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                const Text('FARE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2)),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white, size: 24),
                ),
              ],
            ),
          ),

          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // â”€â”€ Tanggal keberangkatan â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    decoration: BoxDecoration(
                      color: Color(0XFFEFEDED),
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.flight_takeoff_rounded,
                            color: kRed, size: 22),
                        const SizedBox(width: 8),
                        const Text('Berangkat  - Jum, 27 Feb 2026',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: kRed)),
                        const SizedBox(width: 15),
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4CAF50),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Icon(Icons.check,
                              color: Colors.white, size: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // â”€â”€ Tabel info penerbangan â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        // Header tabel
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: const Row(
                            children: [
                              Expanded(
                                  child: Text('MASKAPAI',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF888888)))),
                              Expanded(
                                  child: Text('FLIGHT NO.',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF888888)))),
                              Expanded(
                                  child: Text('RUTE',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF888888)))),
                              Expanded(
                                  child: Text('ETD/ETA',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF888888)))),
                            ],
                          ),
                        ),
                        const Divider(height: 1, color: Color(0xFFC1C1C1)),
                        // Baris data
                        Padding(
                          padding: const EdgeInsets.only(top: 1, ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(child: Text('UI', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(flight.no, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(flight.depAp, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(flight.dep, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Expanded(child: Text('0 Stop', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(fare.cls + '-' + fare.code.replaceAll(' ', ''), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(flight.arrAp, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                      Expanded(child: Text(flight.arr, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                top: 3,
                                bottom: 0,
                                child: Center(
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF4CAF50),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Icon(Icons.check, color: Colors.white, size: 14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1, color: Color(0xFFC1C1C1)),
                  const SizedBox(height: 11),
                  // ── Rincian Harga ──────────────────────────────────────────
                  // Grey card header — sama level dengan grey card tanggal,
                  // sehingga hanya terkena padding dari SingleChildScrollView
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEDED),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 6,),
                          decoration: BoxDecoration(
                            color:Color(0xFFC42D27),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Text(
                            '\$: ',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text('Rincian Harga',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: kRed)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9),
                  const Divider(height: 1, color: Color(0xFFC1C1C1)),
                  // Konten harga
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 6),
                        const Text('JT',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: Colors.black)),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(fontSize: 14, color: Color(0xFF3D3C3C)),
                                children: [
                                  TextSpan(text: 'Dewasa  '),
                                  TextSpan(
                                    text: '- x1',
                                    style: TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Text('Rp. ${_fmtRp(totalPrice)}',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xFF1A1A1A))),
                          ],
                        ),
                        const SizedBox(height: 4),
                        _priceRow('Biaya Jasa', 'Rp. 0', hasInfo: true),
                        const SizedBox(height: 4),
                        _priceRow('Ancillaries', 'Rp. 0'),
                        const SizedBox(height: 5),
                        const Divider(color: Color(0xFFC1C1C1)),
                        Row(
                          children: [
                            const Text('Total',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: kRed)),
                            const Spacer(),
                            Text('Rp. ${_fmtRp(totalPrice)}',
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: kRed)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),

                  // â”€â”€ Buttons â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: kRed, width: 1.5),
                            foregroundColor: kRed,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text('Copy',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kRed,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text('Lanjut',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),

                  // â”€â”€ Catatan â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE0E0E0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.edit_note_rounded,
                                size: 22, color: Color(0xFF121212)),
                            SizedBox(width: 6),
                            Text('Catatan',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF121212))),
                          ],
                        ),
                        const SizedBox(height: 10),
                        _noteItem('Informasi fare rules, klik ',
                            linkText: 'disini'),
                        _noteItem('Komisi ',
                            bold: '0',
                            suffix:
                                ' rupiah untuk rute SIN-CGK dikelas promo (X,V), '
                                'silahkan untuk menambahkan Service Fee sebagai komisi'),
                        _noteItem(
                            'Validity passport > 6 bulan dari tanggal terakhir penerbangan'),
                        const SizedBox(height: 6),
                        const Text('Tampilan selengkapnya...',
                            style: TextStyle(
                                color: kRed,
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _priceRow(String label, String value, {bool hasInfo = false}) {
    return Row(
      children: [
        Text(label,
            style: const TextStyle(fontSize: 14, color: Color(0xFF3D3C3C))),
        const Spacer(),
        if (hasInfo) ...[
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: const Color(0xFFFFEBEB),
                borderRadius: BorderRadius.circular(3)),
            child: const Icon(Icons.add, color: kRed, size: 18),
          ),
          const SizedBox(width: 15),
        ],
        Text(value,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A1A))),
      ],
    );
  }

  Widget _noteItem(String text,
      {String? linkText, String? bold, String? suffix}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 5, right: 8),
            decoration:
                const BoxDecoration(color: kRed, shape: BoxShape.circle),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 12, color: Color(0xFF444444)),
                children: [
                  TextSpan(text: text),
                  if (linkText != null)
                    TextSpan(
                        text: linkText,
                        style: const TextStyle(
                            color: kRed, fontWeight: FontWeight.w600)),
                  if (bold != null)
                    TextSpan(
                        text: bold,
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                  if (suffix != null) TextSpan(text: suffix),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _fmtRp(double value) {
    final s = value.toStringAsFixed(0);
    final buf = StringBuffer();
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      if (count > 0 && count % 3 == 0) buf.write('.');
      buf.write(s[i]);
      count++;
    }
    return buf.toString().split('').reversed.join();
  }
}
