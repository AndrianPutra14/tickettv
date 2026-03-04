import 'package:flutter/material.dart';

const Color kRed = Color(0xFFC42D27);

class AsuransiSheet extends StatefulWidget {
  const AsuransiSheet({super.key});

  @override
  State<AsuransiSheet> createState() => _AsuransiSheetState();
}

class _AsuransiSheetState extends State<AsuransiSheet> {
  bool _pilihSemua = true;
  bool _cermatiDipilih = true;

  final String _prefix = '+62';
  final _teleponAltController = TextEditingController();

  static const List<String> _manfaat = [
    'Penerbangan overbook, hingga IDR 2,500,00',
    'Meninggal dunia hingga cacat tetap akibat kecelakaan , sebesar IDR 25,000,000',
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
      // margin atas dihapus agar header naik
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        children: [

          // ── HEADER ─────────────────────────────────────
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

          // ── BODY ───────────────────────────────────────
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 20),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // Jenis Asuransi
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
                      const Text(
                        'Pilih Semua',
                        style: TextStyle(fontSize: 13, color: Color(0xFF444444)),
                      ),
                      const SizedBox(width: 6),
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

                  const SizedBox(height: 15),

                  // Provider
                  const Text(
                    'Provider : cermati',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: kRed,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ── CARD CERMATI INSURANCE ─────────────────
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFDDDDDD)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [

                        // Header card
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
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
                              const Icon(Icons.unfold_more_rounded,
                                  size: 18, color: Color(0xFF888888)),
                              const SizedBox(width: 8),
                              const Text(
                                'Rp. 10.000',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF222222),
                                ),
                              ),
                              const SizedBox(width: 8),
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

                        // Manfaat
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

                  // Telepon Alternatif
                  TextField(
                    controller: _teleponAltController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: 'Telepon Alternatif',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixText: '$_prefix ',
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ── FOOTER BUTTON ─────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFFEEEEEE))),
            ),
            child: Row(
              children: [
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
                      child: const Text(
                        'Ok',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
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
                      child: const Text(
                        'Tidak perlu Asuransi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
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