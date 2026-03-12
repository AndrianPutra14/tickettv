import 'package:flutter/material.dart';
import '../model/partner_flight_models.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  int _sortIndex = 0;

  bool _transitLangsung = true;
  bool _transit1 = true;

  bool _depPagi = true;
  bool _depSore = true;
  bool _depMalam = true;

  bool _arrPagi = true;
  bool _arrSore = true;
  bool _arrMalam = true;

  bool _airLion = true;
  bool _airBatik = true;
  bool _airGaruda = true;
  bool _airCitilink = true;

  static const _sortLabels = [
    'Berangkat paling awal',
    'Berangkat paling akhir',
    'Datang paling awal',
    'Datang paling akhir',
  ];

  Widget _sectionTitle(String text) => Padding(
        padding: const EdgeInsets.only(top: 18, bottom: 8),
        child: Text(text,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: kRed)),
      );

  Widget _sectionHeader(String title, VoidCallback onClearAll, VoidCallback onSelectAll) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: kRed)),
        const Spacer(),
        GestureDetector(
          onTap: onClearAll,
          child: const Text('Hapus Semua',
              style: TextStyle(fontSize: 12, color: Color(0xFF888888))),
        ),
        const SizedBox(width: 6),
        GestureDetector(
          onTap: onClearAll,
          child: const Icon(Icons.menu, size: 18, color: Color(0xFF888888)),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onSelectAll,
          child: const Icon(Icons.check_box, size: 18, color: kRed),
        ),
      ],
    );
  }

  Widget _checkRow(String label, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(label,
                style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A))),
          ),
          SizedBox(
            width: 24, height: 24,
            child: Checkbox(
              value: value,
              activeColor: kRed,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              onChanged: (v) => onChanged(v ?? false),
            ),
          ),
        ],
      ),
    );
  }

  Widget _timeCheckRow(String time, String label, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Text(time,
                style: const TextStyle(fontSize: 13, color: Color(0xFF555555))),
          ),
          Expanded(
            child: Text(label,
                style: const TextStyle(fontSize: 13, color: Color(0xFF1A1A1A))),
          ),
          SizedBox(
            width: 24, height: 24,
            child: Checkbox(
              value: value,
              activeColor: kRed,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              onChanged: (v) => onChanged(v ?? false),
            ),
          ),
        ],
      ),
    );
  }

  Widget _airlineRow(String name, String assetPath, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            width: 32, height: 32,
            decoration: const BoxDecoration(color: Color(0xFFF0F0F0), shape: BoxShape.circle),
            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Image.asset(assetPath, fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.flight, size: 18, color: kRed)),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(name,
                style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A))),
          ),
          SizedBox(
            width: 24, height: 24,
            child: Checkbox(
              value: value,
              activeColor: kRed,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
              onChanged: (v) => onChanged(v ?? false),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.88,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      snap: true,
      builder: (_, scrollController) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    // ── Ellipse Header ──────────────────────────────────────
                    SizedBox(
                      height: 65,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: -(MediaQuery.of(context).size.width * 0.08),
                            top: 2,
                            bottom: 0,
                            child: Image.asset(
                              'assets/images/Ellipsered.png',
                              width: MediaQuery.of(context).size.width * 0.76,
                              fit: BoxFit.fill,
                              errorBuilder: (_, __, ___) => Container(
                                width: MediaQuery.of(context).size.width * 0.76,
                                color: kRed,
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 12, top: 4, bottom: 0,
                            child: Center(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.tune_rounded, color: Colors.black, size: 20),
                                  SizedBox(width: 8),
                                  Text('Urutkan dan Filter',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 12, top: 19,
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset('assets/images/Ellipseyell.png',
                                      width: 80, height: 40, fit: BoxFit.fill),
                                  const Text('X',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF1A1A1A),
                                          height: 1)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ── Scrollable content ──────────────────────────────────
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                        children: [
                          _sectionTitle('Urutkan'),
                          Wrap(
                            spacing: 10, runSpacing: 10,
                            children: List.generate(_sortLabels.length, (i) {
                              final sel = _sortIndex == i;
                              return GestureDetector(
                                onTap: () => setState(() => _sortIndex = i),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: sel ? kRed : Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: sel ? kRed : const Color(0xFFC42D27), width: 1.2),
                                  ),
                                  child: Text(_sortLabels[i],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: sel ? Colors.white : const Color(0xFF1A1A1A))),
                                ),
                              );
                            }),
                          ),

                          const SizedBox(height: 20),
                          const Divider(color: Color(0xFFF0F0F0)),
                          const SizedBox(height: 4),
                          _sectionHeader(
                            'Transit',
                            () => setState(() { _transitLangsung = false; _transit1 = false; }),
                            () => setState(() { _transitLangsung = true; _transit1 = true; }),
                          ),
                          _checkRow('Langsung', _transitLangsung, (v) => setState(() => _transitLangsung = v)),
                          _checkRow('1 Transit', _transit1, (v) => setState(() => _transit1 = v)),

                          const SizedBox(height: 12),
                          const Divider(color: Color(0xFFF0F0F0)),
                          const SizedBox(height: 4),
                          const Row(
                            children: [
                              Text('Waktu', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: kRed)),
                              Spacer(),
                              Text('Hapus Semua', style: TextStyle(fontSize: 12, color: Color(0xFF888888))),
                              SizedBox(width: 6),
                              Icon(Icons.menu, size: 18, color: Color(0xFF888888)),
                              SizedBox(width: 4),
                              Icon(Icons.check_box, size: 18, color: kRed),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text('Waktu Keberangkatan',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: kRed)),
                          _timeCheckRow('06.00 - 12.00', 'Pagi', _depPagi, (v) => setState(() => _depPagi = v)),
                          _timeCheckRow('12.00 - 18.00', 'Sore', _depSore, (v) => setState(() => _depSore = v)),
                          _timeCheckRow('18.00 - 24.00', 'Malam', _depMalam, (v) => setState(() => _depMalam = v)),
                          const SizedBox(height: 10),
                          const Text('Waktu Kedatangan',
                              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: kRed)),
                          _timeCheckRow('06.00 - 12.00', 'Pagi', _arrPagi, (v) => setState(() => _arrPagi = v)),
                          _timeCheckRow('12.00 - 18.00', 'Sore', _arrSore, (v) => setState(() => _arrSore = v)),
                          _timeCheckRow('18.00 - 24.00', 'Malam', _arrMalam, (v) => setState(() => _arrMalam = v)),

                          const SizedBox(height: 12),
                          const Divider(color: Color(0xFFF0F0F0)),
                          const SizedBox(height: 4),
                          _sectionHeader(
                            'Maskapai',
                            () => setState(() { _airLion = false; _airBatik = false; _airGaruda = false; _airCitilink = false; }),
                            () => setState(() { _airLion = true; _airBatik = true; _airGaruda = true; _airCitilink = true; }),
                          ),
                          _airlineRow('Lion Air', 'assets/images/lionair.png', _airLion, (v) => setState(() => _airLion = v)),
                          _airlineRow('Batik Air', 'assets/images/batikair.png', _airBatik, (v) => setState(() => _airBatik = v)),
                          _airlineRow('Garuda Indonesia', 'assets/images/garuda.png', _airGaruda, (v) => setState(() => _airGaruda = v)),
                          _airlineRow('Citilink', 'assets/images/citilink.png', _airCitilink, (v) => setState(() => _airCitilink = v)),

                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kRed, elevation: 0,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              child: const Text('Terapkan Filter',
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ── Handle bar floating ─────────────────────────────────────────
            const Positioned(
              top: 8, left: 0, right: 0,
              child: Center(
                child: SizedBox(
                  width: 44, height: 5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFCCCCCC),
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
