import 'package:flutter/material.dart';

const Color _kRed = Color(0xFFC42D27);

enum KwitansiOption { unduh, kirimEmail }
/// Panggil lewat [KwitansiSheet.show(context)].
class KwitansiSheet extends StatefulWidget {
  const KwitansiSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const KwitansiSheet(),
    );
  }

  @override
  State<KwitansiSheet> createState() => _KwitansiSheetState();
}

class _KwitansiSheetState extends State<KwitansiSheet> {
  KwitansiOption _option = KwitansiOption.unduh;
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isEmail = _option == KwitansiOption.kirimEmail;
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Header (sama persis dengan Copy Fare Summary) ───────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
            child: Row(
              children: [
                const Icon(Icons.receipt_long_outlined,
                    size: 24, color: Color(0xFF1A1A1A)),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Kwitansi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                // Tombol close — ellipse kuning seperti Copy Fare Summary
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                    width: 46,
                    height: 45,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Ellipseyell.png',
                          width: 55,
                          height: 55,
                          fit: BoxFit.contain,
                          errorBuilder: (_, __, ___) => Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Icon(Icons.close,
                            size: 26, color: Color(0xFF0F0F0F)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFE0E0E0)),

          // ── Body dengan watermark lingkaran merah (kiri atas) ───────────
          Stack(
            children: [
              // Lingkaran watermark — sama seperti Copy Fare Summary
              Positioned(
                left: -120,
                top: -30,
                child: Container(
                  width: 450,
                  height: 450,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _kRed.withOpacity(0.12),
                  ),
                ),
              ),

              // Konten body
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, bottomInset + 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── Radio Options ───────────────────────────────────
                    Row(
                      children: [
                        _radioOption(
                          label: 'Unduh',
                          value: KwitansiOption.unduh,
                        ),
                        const SizedBox(width: 16),
                        _radioOption(
                          label: 'Kirim Email',
                          value: KwitansiOption.kirimEmail,
                        ),
                      ],
                    ),

                    // ── Email section ────────────────────────────────────
                    if (isEmail) ...[
                      const SizedBox(height: 14),
                      const Text(
                        'Silahkan masukkan email. Jika lebih dari satu email, pisahkan dengan tanda koma',
                        style: TextStyle(
                            fontSize: 12, color: Color(0xFF888888)),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                              fontSize: 13, color: Color(0xFFAAAAAA)),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color(0xFFDDDDDD), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color(0xFFDDDDDD), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: _kRed, width: 1.5),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: const BoxDecoration(
                              color: Color(0xFF9E9E9E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                                Icons.person_outline_rounded,
                                size: 16,
                                color: Colors.white),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Sertakan email123@gmail.com',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF888888)),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),

          // ── Footer: Konfirmasi button (fixed, di luar body) ─────────────
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(16, 10, 16, 16 + bottomPad),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // TODO: handle download or send email logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _kRed,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text(
                  'Konfirmasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
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

  Widget _radioOption({
    required String label,
    required KwitansiOption value,
  }) {
    return GestureDetector(
      onTap: () => setState(() => _option = value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<KwitansiOption>(
            value: value,
            groupValue: _option,
            activeColor: _kRed,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onChanged: (v) => setState(() => _option = v!),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}
