import 'package:flutter/material.dart';

const Color _kRed = Color(0xFFC42D27);

// ─── Bank Logo Widgets ────────────────────────────────────────────────────────
Widget _bankLogo(String name) {
  switch (name) {
    case 'Bank Permata':
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFFE8F4FB), borderRadius: BorderRadius.circular(8)),
        child: const Center(child: Icon(Icons.diamond_outlined, size: 22, color: Color(0xFF0078B4))),
      );
    case 'Bank Syariah Indonesia':
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFF00833F), borderRadius: BorderRadius.circular(8)),
        child: const Center(child: Text('BSI', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 0.5))),
      );
    case 'Bank Rakyat Indonesia':
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFF003087), borderRadius: BorderRadius.circular(8)),
        child: const Center(child: Text('BRI', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 0.5))),
      );
    case 'Bank Mandiri':
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFF003087), borderRadius: BorderRadius.circular(8)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('mandiri', style: TextStyle(fontSize: 8, fontWeight: FontWeight.w700, color: Colors.white)),
          Container(margin: const EdgeInsets.only(top: 2), width: 24, height: 3, color: const Color(0xFFF5C518)),
        ]),
      );
    case 'Bank Negara Indonesia':
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFFFF6600), borderRadius: BorderRadius.circular(8)),
        child: const Center(child: Text('BNI', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 0.5))),
      );
    default:
      return Container(
        width: 42, height: 38,
        decoration: BoxDecoration(color: const Color(0xFFF0F0F0), borderRadius: BorderRadius.circular(8)),
        child: const Icon(Icons.account_balance_rounded, size: 22, color: Color(0xFF888888)),
      );
  }
}

// ─── Screen ───────────────────────────────────────────────────────────────────
class VirtualAccountScreen extends StatefulWidget {
  const VirtualAccountScreen({super.key});

  @override
  State<VirtualAccountScreen> createState() => _VirtualAccountScreenState();
}

class _VirtualAccountScreenState extends State<VirtualAccountScreen> {
  int? _selected;

  static const _banks = [
    'Bank Permata',
    'Bank Syariah Indonesia',
    'Bank Rakyat Indonesia',
    'Bank Mandiri',
    'Bank Negara Indonesia',
  ];

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: _kRed,
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
                    icon: const Icon(Icons.arrow_back, color: Colors.white, size: 22),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    'VIRTUAL ACCOUNT - ISSUED',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white, letterSpacing: 0.5),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            // ── Scrollable: judul + daftar bank ────────────────────────────
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Pilih Bank Tujuan',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: _kRed),
                    ),
                    const SizedBox(height: 20),
                    ...List.generate(_banks.length, (i) {
                      final isSelected = _selected == i;
                      return GestureDetector(
                        onTap: () => setState(() => _selected = i),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: isSelected ? _kRed : const Color(0xFFDDDDDD),
                              width: isSelected ? 1.8 : 1,
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 4, offset: const Offset(0, 2)),
                            ],
                          ),
                          child: Row(
                            children: [
                              _bankLogo(_banks[i]),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Text(
                                  _banks[i],
                                  style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600,
                                    color: isSelected ? _kRed : const Color(0xFF1A1A1A),
                                  ),
                                ),
                              ),
                              Icon(Icons.chevron_right_rounded, size: 22,
                                  color: isSelected ? _kRed : const Color(0xFF999999)),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),

            // ── Tombol Lanjutkan — PINNED DI BAWAH CARD ────────────────────
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, bottomPad + 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selected == null ? null : () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _kRed,
                    disabledBackgroundColor: const Color(0xFFE08080),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text(
                    'Lanjutkan',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Navigator helper ─────────────────────────────────────────────────────────
class VirtualAccountSheet {
  static void show(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const VirtualAccountScreen()),
    );
  }
}
