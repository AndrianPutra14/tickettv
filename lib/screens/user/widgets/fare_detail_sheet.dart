import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flight_models.dart';
import 'package:project1/utils/routes.dart';

const Color _kRed = Color(0xFFC42D27);
const Color _kRedBg = Color(0xFFFFE6E5);
const Color _kRedBtn = Color.fromARGB(255, 238, 125, 121); // 50% transparency

class FareDetailSheet extends StatelessWidget {
  final FareModel fare;
  final FlightModel flight;
  const FareDetailSheet({super.key, required this.fare, required this.flight});

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
                      color: const Color(0XFFEFEDED),
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
                          padding: const EdgeInsets.only(
                            top: 1,
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  // Row 1: airline code | flight no | depAp | dep
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                              flight.no.replaceAll(
                                                  RegExp(r'\d'), ''),
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(flight.no,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(flight.depAp,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(flight.dep,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  // Row 2: airline code | ECO-B9 | arrAp | arr
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(
                                              flight.no.replaceAll(
                                                  RegExp(r'\d'), ''),
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(
                                              '${fare.cls}-${fare.code.replaceAll(' ', '')}',
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(flight.arrAp,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
                                      Expanded(
                                          child: Text(flight.arr,
                                              style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.5))),
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
                                    child: const Icon(Icons.check,
                                        color: Colors.white, size: 14),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEDED),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFC42D27),
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
                        Builder(builder: (context) {
                          // Harga asli sebelum diskon
                          final originalPrice = totalPrice * 1.25;
                          final discountPct = 20; // persen diskon
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Label "Dewasa - x1"
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xFF3D3C3C)),
                                  children: [
                                    TextSpan(text: 'Dewasa  '),
                                    TextSpan(
                                      text: '- x1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              // Kolom harga: dicoret di atas, diskon di bawah
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // Badge diskon + harga asli dicoret
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: kRed,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Text(
                                          '$discountPct%',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Rp. ${_fmtRp(originalPrice)}',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF999999),
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor: Color(0xFF999999),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  // Harga setelah diskonn
                                  Text(
                                    'Rp. ${_fmtRp(totalPrice)}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: kRed),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }),
                        const SizedBox(height: 4),
                        _priceRow('Biaya Jasa', 'Rp. 20.000'),
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
                            Text('Rp. ${_fmtRp(totalPrice + 20000)}',
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

                  // ── Buttons ────────────────────────────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 110, // ← atur lebar button Copy di sini
                        height: 44, // ← atur tinggi button di sini
                        child: ElevatedButton(
                          onPressed: () => showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (ctx) => _CopyFareSummarySheet(
                              fare: fare,
                              flight: flight,
                              totalPrice: totalPrice,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kRed.withOpacity(0.5),
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            side: const BorderSide(color: kRed, width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text('Copy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14)),
                        ),
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: 110, // ← atur lebar button Lanjut di sini
                        height: 44, // ← atur tinggi button di sini
                        child: ElevatedButton(
                          onPressed: () {
                            // Tutup fare detail sheet, lalu navigasi via named route
                            Navigator.pop(context);
                            Navigator.pushNamed(
                              context,
                              AppRoutes.informasiPemesanan,
                              arguments: {
                                'fare': fare,
                                'flight': flight,
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kRed,
                            elevation: 0,
                            padding: EdgeInsets.zero,
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
                                size: 27, color: Color(0xFF121212)),
                            SizedBox(width: 6),
                            Text('Catatan',
                                style: TextStyle(
                                    fontSize: 15,
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
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (ctx) => const _CatatanSheet(),
                          ),
                          child: const Text(
                            'Tampilan selengkapnya...',
                            style: TextStyle(
                              color: kRed,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: kRed,
                            ),
                          ),
                        ),
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
                style: const TextStyle(fontSize: 13, color: Color(0xFF3D3C3C)),
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

// ─── Copy Fare Summary Bottom Sheet ───────────────────────────────────────
class _CopyFareSummarySheet extends StatelessWidget {
  final FareModel fare;
  final FlightModel flight;
  final double totalPrice;

  const _CopyFareSummarySheet({
    required this.fare,
    required this.flight,
    required this.totalPrice,
  });

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

  String _buildSummaryText() {
    return 'Depart Summary :\n\n'
        '${flight.no} - ${fare.cls}(${fare.code})\n'
        '${flight.depAp} - ${flight.arrAp}\n'
        'Keberangkatan ${flight.dep} LT\n'
        'Kedatangan ${flight.arr} LT.\n\n'
        'Total Price : Rp. ${_fmtRp(totalPrice)}';
  }

  @override
  Widget build(BuildContext context) {
    final summaryText = _buildSummaryText();

    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            height: 450,
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                SizedBox(
                  height: 450,
                  child: Stack(
                    children: [
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
                      Positioned(
                        right: -42,
                        top: -35,
                        child: Container(
                          width: 140,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromARGB(255, 243, 225, 184),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(20, 100, 20, 12),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            summaryText,
                            style: const TextStyle(
                              fontSize: 16,
                              height: 1.8,
                              color: Color(0xFF2A2A2A),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 15, 25, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.copy_outlined,
                            size: 24, color: Color(0xFF1A1A1A)),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            'Copy Fare Summary',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1A1A1A),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.close,
                              size: 26, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                // ── Button Card ─────────────────────────────────
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 13),
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
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _kRed,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Copy',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
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

// ─── Catatan Bottom Sheet ─────────────────────────────────────────────────
class _CatatanSheet extends StatelessWidget {
  const _CatatanSheet();

  @override
  Widget build(BuildContext context) {
    final notes = [
      const _NoteData(
        text: 'Informasi fare rules, klik ',
        linkText: 'disini',
      ),
      const _NoteData(
        text: 'Block seat dapat dilakukan untuk Reservasi dengan jadwal '
            'penerbangan > 48 jam sebelum DOT dan tidak berlaku untuk '
            'kelas promo (Q,T,V,S,H,L)',
      ),
      const _NoteData(
        text: 'Permintaan add ',
        boldText: 'GFF',
        suffix: ' dapat melalui Helpdesk',
      ),
      const _NoteData(
        text: 'Permintaan Void diperkenankan (tanggal issued dan tanggal '
            'void adalah sama)',
      ),
      const _NoteData(
        text: 'Permintaan Rebook, Refund dan Reroute dapat melalui Helpdesk',
      ),
      const _NoteData(
        text: 'Rute rute tertentu tidak dapat menggunakan kelas ',
        boldText: 'V',
        suffix: ' untuk Return dann Connecting Flight',
      ),
      const _NoteData(
        text: 'Ketentuan untuk penerbangan Return atau Connecting dengan '
            'kombinasi kelas mengikuti kelas terendah',
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Header ────────────────────────────────────────────────────
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                const Icon(Icons.edit_rounded, color: Colors.white, size: 22),
                const SizedBox(width: 10),
                const Text(
                  'Catatan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white, size: 24),
                ),
              ],
            ),
          ),

          // ── Body ──────────────────────────────────────────────────────
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: notes.map((n) => _buildNoteItem(n)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(_NoteData note) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 7,
            height: 7,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: const BoxDecoration(
              color: kRed,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF333333),
                  height: 1.5,
                ),
                children: [
                  TextSpan(text: note.text),
                  if (note.linkText != null)
                    TextSpan(
                      text: note.linkText,
                      style: const TextStyle(
                        color: kRed,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: kRed,
                      ),
                    ),
                  if (note.boldText != null)
                    TextSpan(
                      text: note.boldText,
                      style: const TextStyle(
                        color: kRed,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  if (note.suffix != null) TextSpan(text: note.suffix),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoteData {
  final String text;
  final String? linkText;
  final String? boldText;
  final String? suffix;

  const _NoteData({
    required this.text,
    this.linkText,
    this.boldText,
    this.suffix,
  });
}
