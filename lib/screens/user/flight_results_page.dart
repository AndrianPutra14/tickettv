import 'package:flutter/material.dart';
import 'widgets/flight_models.dart';
import 'widgets/flight_card.dart';
import 'widgets/filter_sheet.dart';

// â”€â”€â”€ Demo data â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
final _flights = <FlightModel>[
  FlightModel('IU916', '12:00', 'SUB', '13:30', 'DPS', '1j 30m', [const FareModel('ECO', 'B 9', 980.0, sel: true)]),
  FlightModel('IU917', '12:00', 'SUB', '13:30', 'DPS', '1j 30m', [const FareModel('ECO', 'B 9', 980.0, sel: true)]),
  FlightModel('IU918', '12:00', 'SUB', '13:30', 'DPS', '1j 30m', [const FareModel('ECO', 'B 9', 980.0, sel: true)]),
  FlightModel('IU919', '06:00', 'PKU', '07:45', 'CGK', '1j 45m', [const FareModel('ECO', 'B 9', 1243.5, sel: true)]),
  FlightModel('IU920', '09:00', 'CGK', '10:45', 'SUB', '1j 45m', [const FareModel('ECO', 'B 9', 1243.5, sel: true)]),
  FlightModel('IU921', '12:00', 'SUB', '13:30', 'DPS', '1j 30m', [const FareModel('ECO', 'B 9', 980.0, sel: true)]),
];

const _dates = [
  ('Rab', '28 Jan 2026'),
  ('Kam', '29 Jan 2026'),
  ('Jum', '30 Jan 2026'),
  ('Sab', '31 Jan 2026'),
];

// â”€â”€â”€ Page â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€
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

  void _openFilter() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const FilterSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgPage,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context),
            _buildDateTabs(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 24),
                itemCount: _flights.length,
                itemBuilder: (_, i) => FlightCard(flight: _flights[i]),
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
            child: const Icon(Icons.arrow_back, size: 22, color: Color(0xFF1A1A1A)),
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
                              fontSize: 15, fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A)),
                          overflow: TextOverflow.ellipsis),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(Icons.arrow_forward, size: 14, color: Color(0xFF1A1A1A)),
                    ),
                    Flexible(
                      child: Text(widget.to,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700,
                              color: Color(0xFF1A1A1A)),
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(widget.paxLabel,
                    style: const TextStyle(fontSize: 15, color: Color(0xFF999999))),
              ],
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton.icon(
            onPressed: _openFilter,
            icon: const Icon(Icons.tune_rounded, size: 15, color: Colors.white),
            label: const Text('Filter',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: kRed,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                          color: active ? kRed : Colors.transparent,
                          width: 2.5,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(_dates[i].$1,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: active ? kRed : const Color(0xFF888888))),
                        const SizedBox(height: 1),
                        Text(_dates[i].$2,
                            style: TextStyle(
                                fontSize: 12,
                                color: active ? kRed : const Color(0xFF888888))),
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
