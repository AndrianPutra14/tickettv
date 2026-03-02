import 'package:flutter/material.dart';
import 'flight_models.dart';
import 'fare_detail_sheet.dart';

class FlightCard extends StatefulWidget {
  final FlightModel flight;
  const FlightCard({required this.flight});

  @override
  State<FlightCard> createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  int _selectedIndex = -1; // -1 = tidak ada yang terpilih

  @override
  Widget build(BuildContext context) {
    final badgeFare = widget.flight.fares.firstWhere(
      (f) => f.sel,
      orElse: () => widget.flight.fares.first,
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: const Color(0xFFE8E8E8), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 8, bottom: 2, left: 6, right: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFEFEEEE),
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Logo maskapai ──────────────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 10),
                    child: Container(
                      width: 35, height: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(color: Color(0x14000000), blurRadius: 4, offset: Offset(0, 1)),
                        ],
                      ),
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Image.asset(
                            'assets/images/lionair.png',
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) =>
                                const Icon(Icons.flight, color: kRed, size: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),

                  // ── Flight number ──────────────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(widget.flight.no,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w800, color: kRed)),
                  ),
                  const SizedBox(width: 25),

                  // ── Departure ─────────────────────────────────────────────
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.flight.dep,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600,
                              color: Color(0xFF1A1A1A), letterSpacing: -0.3)),
                      Text(widget.flight.depAp,
                          style: const TextStyle(fontSize: 11, color: Color(0xFF1A1A1A))),
                    ],
                  ),

                  // ── Duration + route ───────────────────────────────────────
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(widget.flight.dur,
                            style: const TextStyle(
                                fontSize: 11, color: Color(0xFF3D3C3C), height: 0.5)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.flight_rounded, size: 20, color: kRed),
                            SizedBox(
                              width: 47, height: 8,
                              child: CustomPaint(painter: _DashedLinePainter(color: kRed)),
                            ),
                            const Icon(Icons.location_on_rounded, size: 20, color: kRed),
                          ],
                        ),
                        const Text('Direct',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w600,
                                color: kRed, height: 0.5)),
                      ],
                    ),
                  ),

                  // ── Arrival ───────────────────────────────────────────────
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.flight.arr,
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600,
                              color: Color(0xFF1A1A1A), letterSpacing: -0.3)),
                      Text(widget.flight.arrAp,
                          style: const TextStyle(fontSize: 11, color: Color(0xFF1A1A1A))),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 4),

              // ── Fare badges (scrollable, selectable) ──────────────────────
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildFareBadge(badgeFare, index: 0),
                    const SizedBox(width: 6),
                    _buildFareBadge(badgeFare, index: 1),
                    const SizedBox(width: 6),
                    _buildFareBadge(badgeFare, index: 2),
                    const SizedBox(width: 6),
                    _buildFareBadge(badgeFare, index: 3),
                    const SizedBox(width: 6),
                    _buildFareBadge(badgeFare, index: 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFareBadge(FareModel fare, {required int index}) {
    final sel = index == _selectedIndex;
    return GestureDetector(
      onTap: () {
        setState(() => _selectedIndex = index);
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (_) => FareDetailSheet(fare: fare, flight: widget.flight),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 75, height: 57,
        decoration: BoxDecoration(
          color: sel ? kRed : Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          border: Border.all(
            color: sel ? kRed : const Color(0xFFE0E0E0), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4, offset: const Offset(0, 2)),
          ],
        ),
        padding: const EdgeInsets.all(3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ECO label
            Container(
              decoration: BoxDecoration(
                color: sel ? Colors.white.withOpacity(0.22) : const Color(0xFFC4DEC6),
              ),
              child: Text(fare.cls, textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w800,
                      color: sel ? Colors.white : Colors.black)),
            ),
            // Code & Price
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(fare.code, textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w600,
                          color: sel ? Colors.white : Colors.black)),
                  Text(fare.price.toStringAsFixed(1), textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w700,
                          color: sel ? Colors.white : Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Dashed Line Painter ───────────────────────────────────────────────────────
class _DashedLinePainter extends CustomPainter {
  final Color color;
  const _DashedLinePainter({this.color = const Color(0xFFBBBBBB)});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round;
    const dashW = 5.0;
    const gapW = 4.0;
    double x = 0;
    final y = size.height / 2;
    while (x < size.width) {
      canvas.drawLine(Offset(x, y), Offset(x + dashW, y), paint);
      x += dashW + gapW;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter old) => false;
}
