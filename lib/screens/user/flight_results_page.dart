import 'package:flutter/material.dart';

const _red = Color(0xFFC42D27);
const _bgPage = Color(0xFFF5EDED);
const _fareGreen = Color(0xFFDCEDC8);
const _fareGreenDark = Color(0xFF4CAF50);

// ─── Models ───────────────────────────────────────────────────────────────────
class _Fare {
  final String cls, code;
  final double price;
  final bool sel;
  const _Fare(this.cls, this.code, this.price, {this.sel = false});
}

class _Flight {
  final String no, dep, depAp, arr, arrAp, dur;
  final List<_Fare> fares;
  _Flight(this.no, this.dep, this.depAp, this.arr, this.arrAp, this.dur,
      this.fares);
}

// ─── Demo data ────────────────────────────────────────────────────────────────
final _flights = <_Flight>[
  _Flight('IU919', '06:00', 'PKU', '07:45', 'CGK', '1j 45m', [
    _Fare('ECO', 'B 9', 1243.5, sel: true),
    _Fare('ECO', 'S 9', 1311.2),
    _Fare('ECO', 'W 9', 1377.8),
    _Fare('ECO', 'G 9', 1444.4),
    _Fare('ECO', 'A 9', 1512.1),
  ]),
  _Flight('IU919', '06:00', 'PKU', '07:45', 'CGK', '1j 45m', [
    _Fare('ECO', 'S 9', 1311.2, sel: true),
    _Fare('ECO', 'S 9', 1311.2),
    _Fare('ECO', 'W 9', 1377.8),
    _Fare('ECO', 'G 9', 1444.4),
    _Fare('ECO', 'A 9', 1512.1),
  ]),
  _Flight('IU919', '06:00', 'PKU', '07:45', 'CGK', '1j 45m', [
    _Fare('ECO', 'S 9', 1311.2, sel: true),
    _Fare('ECO', 'W 9', 1377.8),
    _Fare('ECO', 'G 9', 1444.4),
    _Fare('ECO', 'A 9', 1512.1),
  ]),
  _Flight('IU919', '06:00', 'PKU', '07:45', 'CGK', '1j 45m', [
    _Fare('ECO', 'S 9', 1311.2, sel: true),
    _Fare('ECO', 'W 9', 1377.8),
    _Fare('ECO', 'G 9', 1444.4),
  ]),
];

const _dates = [
  ('Rab', '28 Jan 2026'),
  ('Kam', '29 Jan 2026'),
  ('Jum', '30 Jan 2026'),
  ('Sab', '31 Jan 2026'),
];

// ─── Page ─────────────────────────────────────────────────────────────────────
class FlightResultsPage extends StatefulWidget {
  final String from, to, paxLabel;
  const FlightResultsPage({
    super.key,
    this.from = 'Jakarta (CGK)',
    this.to = 'Surabaya (SUB)',
    this.paxLabel = 'All Class . 1 Penumpang',
  });

  @override
  State<FlightResultsPage> createState() => _FlightResultsPageState();
}

class _FlightResultsPageState extends State<FlightResultsPage> {
  int _di = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgPage,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            _buildDateTabs(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 24),
                itemCount: _flights.length,
                itemBuilder: (_, i) => _FlightCard(flight: _flights[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back,
                size: 22, color: Color(0xFF1A1A1A)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(widget.from,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A)),
                          overflow: TextOverflow.ellipsis),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.arrow_forward,
                          size: 14, color: Color(0xFF1A1A1A)),
                    ),
                    Flexible(
                      child: Text(widget.to,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A)),
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(widget.paxLabel,
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xFF999999))),
              ],
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.tune_rounded, size: 14, color: Colors.white),
            label: const Text('Filter',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: _red,
              elevation: 0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateTabs() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Divider(height: 1, thickness: 1, color: Color(0xFFF0F0F0)),
          Row(
            children: List.generate(_dates.length, (i) {
              final active = i == _di;
              return Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _di = i),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 9),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: active ? _red : Colors.transparent,
                          width: 2.5,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          _dates[i].$1,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: active ? _red : const Color(0xFF888888),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          _dates[i].$2,
                          style: TextStyle(
                            fontSize: 10,
                            color: active ? _red : const Color(0xFF888888),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

// ─── Flight Card ──────────────────────────────────────────────────────────────
class _FlightCard extends StatelessWidget {
  final _Flight flight;
  const _FlightCard({super.key, required this.flight});

  @override
  Widget build(BuildContext context) {
    final badgeFare = flight.fares.firstWhere(
      (f) => f.sel,
      orElse: () => flight.fares.first,
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Flight info row ──────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ── Logo (white circle) + IU919 side by side ──
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // White circle logo
                    Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x18000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/images/lionair.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    // IU919 in red, bold — NEXT TO logo
                    Text(
                      flight.no,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: _red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 14),

                // ── Departure ──
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      flight.dep,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1A1A1A),
                        letterSpacing: -0.3,
                      ),
                    ),
                    Text(
                      flight.depAp,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF888888),
                      ),
                    ),
                  ],
                ),

                // ── Route indicator ──
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Duration ABOVE
                      Text(
                        flight.dur,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFF888888),
                        ),
                      ),
                      const SizedBox(height: 3),
                      // Airplane → dashes → pin (all RED)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.flight_rounded,
                              size: 16, color: _red),
                          Expanded(
                            child: SizedBox(
                              height: 10,
                              child: CustomPaint(
                                painter: _DashedLinePainter(color: _red),
                              ),
                            ),
                          ),
                          const Icon(Icons.location_on_rounded,
                              size: 16, color: _red),
                        ],
                      ),
                      const SizedBox(height: 3),
                      // "Direct" in RED
                      const Text(
                        'Direct',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: _red,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 14),

                // ── Arrival ──
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      flight.arr,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1A1A1A),
                        letterSpacing: -0.3,
                      ),
                    ),
                    Text(
                      flight.arrAp,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF888888),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ── Thin divider ────────────────────────────────────────────────
          const Divider(height: 1, thickness: 1, color: Color(0xFFF0F0F0)),

          // ── Fare badge ──────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
            child: Container(
              decoration: BoxDecoration(
                color: _fareGreen,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: const Color(0xFF81C784),
                  width: 1,
                ),
              ),
              child: IntrinsicWidth(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // "ECO" header — slightly darker green
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: const BoxDecoration(
                        color: Color(0xFF66BB6A),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        badgeFare.cls,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Code + price
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Column(
                        children: [
                          Text(
                            badgeFare.code,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Color(0xFF2E7D32),
                            ),
                          ),
                          Text(
                            badgeFare.price.toStringAsFixed(1),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1B5E20),
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
        ],
      ),
    );
  }
}

// ─── Dashed Line Painter ─────────────────────────────────────────────────────
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
