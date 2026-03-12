import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../flight_models.dart';

const Color _kRed = Color(0xFFC42D27);

class CopyFareSummarySheet extends StatelessWidget {
  final FareModel fare;
  final FlightModel flight;
  final double totalPrice;

  const CopyFareSummarySheet({
    super.key,
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
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 243, 225, 184),
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
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(12)),
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
                          Clipboard.setData(ClipboardData(text: summaryText));
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Fare summary disalin!'),
                              duration: Duration(seconds: 2),
                            ),
                          );
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
