import 'package:flutter/material.dart';

const Color kRed = Color(0xFFC42D27);

class AsuransiSheet extends StatefulWidget {
  const AsuransiSheet({super.key});

  @override
  State<AsuransiSheet> createState() => _AsuransiSheetState();
}

class _AsuransiSheetState extends State<AsuransiSheet> {
  bool _pilihSemua    = true;
  bool _cermatiDipilih = true;

  final String _prefix = '+62';
  final _teleponAltController = TextEditingController();

  static const List<String> _manfaat = [
    'Penerbangan overbook, hingga IDR 2,500,00',
    'Meninggal dunia hingga cacat tetap kibat kecelakaan , sebesar IDR 25,000,000',
    'Biaya pengobatan akibat kecelakaan, hingga IDR 5,000,000',
    'Pembatalan oleh Tertanggung, hingga IDR 2.500.000',
    'Keterlambatan Penerbangan, hingga IDR 500,000',
    'Keterlambatan Bagasi, hingga IDR 500,000',
    'Kerusakan atau Kehilangan Bagasi, hingga IDR 2.500.000',
  ];

  @override
  void dispose() {
    _teleponAltController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [
          // ── Header ──────────────────────────────────────────────────────
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              children: [
                const Text(
                  'ASURANSI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.1,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white, size: 26),
                ),
              ],
            ),
          ),

          // ── Body ────────────────────────────────────────────────────────
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Jenis Asuransi row
                  Row(
                    children: [
                      const Icon(Icons.menu_rounded,
                          size: 22, color: Color(0xFF222222)),
                      const SizedBox(width: 8),
                      const Text(
                        'Jenis Asuransi',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF111111),
                        ),
                      ),
                      const Spacer(),
                      // "Pilih Semua" teks
                      const Text('Pilih Semua',
                          style: TextStyle(
                              fontSize: 13, color: Color(0xFF444444))),
                      const SizedBox(width: 6),
                      // List icon
                      Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: kRed,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.list_rounded,
                            color: Colors.white, size: 18),
                      ),
                      const SizedBox(width: 6),
                      // Checkbox pilih semua
                      GestureDetector(
                        onTap: () =>
                            setState(() => _pilihSemua = !_pilihSemua),
                        child: Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            color: _pilihSemua
                                ? const Color(0xFF4CAF50)
                                : Colors.white,
                            border: Border.all(
                                color: _pilihSemua
                                    ? const Color(0xFF4CAF50)
                                    : const Color(0xFFCCCCCC)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: _pilihSemua
                              ? const Icon(Icons.check,
                                  color: Colors.white, size: 18)
                              : null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Provider label
                  const Text(
                    'Provider : cermati',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: kRed,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // ── Cermati Insurance Card ─────────────────────────────
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFDDDDDD)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        // Card header
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8)),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Cermati Insurance',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF222222),
                                  ),
                                ),
                              ),
                              // Sort icon
                              const Icon(Icons.unfold_more_rounded,
                                  size: 18, color: Color(0xFF888888)),
                              const SizedBox(width: 8),
                              // Harga
                              const Text(
                                'Rp. 10.000',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF222222),
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Toggle dipilih
                              GestureDetector(
                                onTap: () => setState(
                                    () => _cermatiDipilih = !_cermatiDipilih),
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    color: _cermatiDipilih
                                        ? const Color(0xFF4CAF50)
                                        : Colors.white,
                                    border: Border.all(
                                        color: _cermatiDipilih
                                            ? const Color(0xFF4CAF50)
                                            : const Color(0xFFCCCCCC)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: _cermatiDipilih
                                      ? const Icon(Icons.check,
                                          color: Colors.white, size: 18)
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1, color: Color(0xFFEEEEEE)),

                        // Daftar manfaat
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                          child: Column(
                            children: List.generate(
                              _manfaat.length,
                              (i) => Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${i + 1}.',
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF444444),
                                          height: 1.5),
                                    ),
                                    const SizedBox(width: 6),
                                    Expanded(
                                      child: Text(
                                        _manfaat[i],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF444444),
                                            height: 1.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // ── Telepon Alternatif field ────────────────────────────
                  Stack(
                    children: [
                      // Outline border container
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFCCCCCC)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            // Flag + kode negara
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 14),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    'assets/images/Ellipsered.png',
                                    width: 22,
                                    height: 16,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, __, ___) =>
                                        const Icon(Icons.flag,
                                            size: 18, color: kRed),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(_prefix,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                            Container(
                                width: 1,
                                height: 30,
                                color: const Color(0xFFCCCCCC)),
                            Expanded(
                              child: TextField(
                                controller: _teleponAltController,
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(fontSize: 14),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Floating label "Telepon Alternatif"
                      Positioned(
                        top: -9,
                        left: 12,
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: const Text(
                            'Telepon Alternatif',
                            style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF888888)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ── Footer buttons ───────────────────────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
            ),
            child: Row(
              children: [
                // OK button (outlined)
                Expanded(
                  child: SizedBox(
                    height: 46,
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context, true),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: kRed,
                        side: const BorderSide(color: kRed, width: 1.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Ok',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Tidak perlu Asuransi button (filled red)
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 46,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context, false),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kRed,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Tidak perlu Asuransi',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
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
