import 'package:flutter/material.dart';

// ── Seat state ────────────────────────────────────────────────────
enum SeatStatus { occupied, available, selected }

class Seat {
  final int row;
  final int col;
  SeatStatus status;
  final double price;

  Seat(
      {required this.row,
      required this.col,
      required this.status,
      this.price = 205000});

  String get label {
    const cols = ['A', 'B', 'C', 'D', 'E', 'F'];
    return '$row${cols[col]}';
  }
}

// ── Entry point ───────────────────────────────────────────────────
class AturKursi extends StatelessWidget {
  const AturKursi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const AturKursiScreen(),
    );
  }
}

// ── Screen ────────────────────────────────────────────────────────
class AturKursiScreen extends StatefulWidget {
  const AturKursiScreen({super.key});

  @override
  State<AturKursiScreen> createState() => _AturKursiScreenState();
}

class _AturKursiScreenState extends State<AturKursiScreen> {
  static const Color kRed = Color(0xFFC42D27);
  static const Color kRedLight = Color(0xFFFFE6E5);
  static const Color kGrey = Color(0x7FD9D9D9);
  static const Color kSelectedTag = Color(0x33C42D27);
  static const Color kSelectedTagGreen = Color(0x6672CD74);

  // Exit rows (shown as exit markers, no seat rendered)
  static const Set<int> kExitRows = {12, 14};

  // Column X positions from Figma
  static const List<double> kColX = [3, 65, 123, 211, 269, 327];

  List<List<Seat>> _grid = [];

  // Pre-occupied seats (red in Figma design)
  final Set<String> _occupiedSeats = {
    '1A',
    '1C',
    '1D',
    '1E',
    '2A',
    '2B',
    '2C',
    '2D',
    '2E',
    '3A',
    '3B',
    '3C',
    '3D',
    '3E',
    '3F',
    '4A',
    '4B',
    '4C',
    '4D',
    '4E',
    '4F',
    '5A',
    '5D',
    '5E',
    '5F',
    '6A',
    '6B',
    '6C',
    '6D',
    '6E',
    '6F',
    '7A',
    '7B',
    '7C',
    '7D',
    '7E',
    '7F',
    '8A',
    '8B',
    '8C',
    '8D',
    '8E',
    '9A',
    '9B',
    '9D',
    '9E',
    '9F',
    '10A',
    '10B',
    '10C',
    '10E',
    '10F',
    '11A',
    '11B',
    '11C',
    '11D',
    '11E',
    '11F',
    '13A',
    '13B',
    '13C',
    '13D',
    '13E',
    '13F',
    '15A',
    '15B',
    '15C',
    '15D',
    '15E',
    '16A',
    '16B',
    '16C',
    '16D',
    '16E',
    '17A',
    '17B',
    '17C',
    '17D',
    '17E',
    '18A',
    '18B',
    '18C',
    '18D',
    '18E',
    '19A',
    '19B',
    '19C',
    '19D',
    '19E',
    '20A',
    '20B',
    '20C',
    '20D',
    '20E',
  };

  final Set<String> _selectedSeats = {'1B', '2F'};

  @override
  void initState() {
    super.initState();
    _initGrid();
  }

  void _initGrid() {
    _grid = List.generate(20, (rowIdx) {
      final row = rowIdx + 1;
      return List.generate(6, (col) {
        final label = '$row${['A', 'B', 'C', 'D', 'E', 'F'][col]}';
        SeatStatus status;
        if (_occupiedSeats.contains(label)) {
          status = SeatStatus.occupied;
        } else if (_selectedSeats.contains(label)) {
          status = SeatStatus.selected;
        } else {
          status = SeatStatus.available;
        }
        double price = _getSeatPrice(row);

        return Seat(row: row, col: col, status: status, price: price);
      });
    });
  }

  double _getSeatPrice(int row) {
    if (row <= 3) return 205000;
    if (row <= 7) return 127500;
    if (row <= 12) return 77300;
    return 50470;
  }

  void _toggleSeat(int rowIdx, int col) {
    final seat = _grid[rowIdx][col];
    if (seat.status == SeatStatus.occupied) return;
    setState(() {
      if (seat.status == SeatStatus.available) {
        seat.status = SeatStatus.selected;
        _selectedSeats.add(seat.label);
      } else {
        seat.status = SeatStatus.available;
        _selectedSeats.remove(seat.label);
      }
    });
  }

  double get _totalPrice {
    double total = 0;
    for (var row in _grid) {
      for (var seat in row) {
        if (seat.status == SeatStatus.selected) {
          total += seat.price;
        }
      }
    }
    return total;
  }

  String get _selectedSeatDisplay =>
      _selectedSeats.isEmpty ? '-' : _selectedSeats.join(', ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 390,
          child: Column(
            children: [
              _buildHeader(),
              _buildRouteSubBar(),
              _buildPassengerBar(),
              _buildLegendBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildSeatArea(),
                ),
              ),
              _buildBottomBar(),
            ],
          ),
        ),
      ),
    );
  }

  // ── Header ────────────────────────────────────────────────────
  Widget _buildHeader() {
    return SizedBox(
      width: 390,
      height: 133,
      child: Stack(children: [
        Positioned.fill(child: Container(color: Colors.white)),
        Positioned(
          left: -112,
          top: -59,
          child: Container(
            width: 242,
            height: 155,
            decoration: const ShapeDecoration(
                color: Color(0xFFFFE6E5), shape: OvalBorder()),
          ),
        ),
        Positioned(
          left: 310,
          top: 12,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 102,
                height: 81,
                decoration: const ShapeDecoration(
                  color: Color(0xFFF9E7BF),
                  shape: OvalBorder(),
                ),
              ),

              // tombol
              Positioned(
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Color(0xFFC42D27),
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 87,
          child: Container(width: 390, height: 46, color: kRed),
        ),
        Positioned(
          left: 23,
          top: 92,
          child: Container(
            width: 345,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('PKU',
                    style: TextStyle(
                        color: Color(0xFF3D3C3C),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 6),
                Icon(Icons.arrow_forward, size: 14, color: Color(0xFF3D3C3C)),
                SizedBox(width: 6),
                Text('CGK  (Pergi)',
                    style: TextStyle(
                        color: Color(0xFF3D3C3C),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  // ── Route sub-bar ─────────────────────────────────────────────
  Widget _buildRouteSubBar() {
    return Container(
      width: 390,
      height: 46,
      color: kRedLight,
      child: Stack(children: [
        const Positioned(
          left: 23,
          top: 14,
          child: Row(children: [
            Text('PKU',
                style: TextStyle(
                    color: Color(0xFF3D3C3C),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 4),
            Icon(Icons.arrow_forward, size: 12, color: Color(0xFF3D3C3C)),
            SizedBox(width: 4),
            Text('CGK',
                style: TextStyle(
                    color: Color(0xFF3D3C3C),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600)),
          ]),
        ),
        Positioned(
          bottom: 0,
          left: 7,
          child: Container(
              width: 105,
              height: 5,
              decoration: BoxDecoration(
                  color: kRed, borderRadius: BorderRadius.circular(10))),
        ),
      ]),
    );
  }

  // ── Passenger bar ─────────────────────────────────────────────
  Widget _buildPassengerBar() {
    return Align(
      alignment: Alignment.centerLeft,
      child: IntrinsicWidth(
        child: Container(
          height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 9),
                  Container(
                    width: 7,
                    height: 36,
                    color: const Color(0x26C42D27),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '1. MR. FAJRI AGUSTRYANSYAH',
                        style: TextStyle(
                          color: Color(0xFF3D3C3C),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$_selectedSeatDisplay | Rp. ${_formatPrice(_totalPrice)}',
                          style: const TextStyle(
                            color: Color(0xFF3D3C3C),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 7,
                    height: 36,
                    color: const Color(0x26C42D27),
                  ),
                  const SizedBox(width: 9),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                margin: const EdgeInsets.only(bottom: 1, left: 7, right: 7),
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatPrice(num price) {
    if (price == 0) return '0';
    String s = price.toStringAsFixed(0);
    String result = '';
    int count = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      if (count > 0 && count % 3 == 0) result = '.$result';
      result = s[i] + result;
      count++;
    }
    return result;
  }

  // ── Bottom bar ────────────────────────────────────────────────
  Widget _buildBottomBar() {
    return Container(
      width: 390,
      height: 63,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFA1A1A1)),
      ),
      child: Row(children: [
        const SizedBox(width: 26),
        Text(
          'Harga Total : Rp. ${_formatPrice(_totalPrice.toInt())}',
          style: const TextStyle(
              color: kRed,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Container(
          width: 99,
          height: 35,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: kRed)),
          child: const Center(
            child: Text('OK',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800)),
          ),
        ),
      ]),
    );
  }

  // ── Seat area ─────────────────────────────────────────────────
  Widget _buildSeatArea() {
    return Container(
      color: Colors.white,
      child: Column(children: [
        // _buildLegendBar(),
        _buildColumnHeaders(),
        ..._buildAllRows(),
        const SizedBox(height: 8),
      ]),
    );
  }

  Widget _buildLegendBar() {
    return Container(
      width: 390,
      height: 38,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 237, 237),
        // border: Border.all(color: const Color(0xFFA1A1A1)),
      ),
      child: Row(children: [
        const SizedBox(width: 26),
        _legendDot(Colors.white, border: kRed),
        const SizedBox(width: 4),
        const Text('Tersedia',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
        const SizedBox(width: 12),
        _legendDot(kRed, border: kRed),
        const SizedBox(width: 4),
        const Text('Terisi',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
        const SizedBox(width: 12),
        _legendDot(const Color(0xff72cd74), border: const Color(0xFF2E7D32)),
        const SizedBox(width: 4),
        const Text('Dipilih',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
      ]),
    );
  }

  Widget _legendDot(Color fill, {Color? border}) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(3),
        border: border != null ? Border.all(color: border, width: 1.5) : null,
      ),
    );
  }

  Widget _buildColumnHeaders() {
    return SizedBox(
      width: 390,
      height: 36,
      child: Stack(children: [
        for (int i = 0; i < 6; i++)
          Positioned(
            left: kColX[i] + 20,
            top: 8,
            child: Text(['A', 'B', 'C', 'D', 'E', 'F'][i],
                style: const TextStyle(
                    color: Color(0xFF3D3C3C),
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500)),
          ),
      ]),
    );
  }

  List<Widget> _buildAllRows() {
    final widgets = <Widget>[];
    for (int rowIdx = 0; rowIdx < 20; rowIdx++) {
      final rowNum = rowIdx + 1;
      if (kExitRows.contains(rowNum)) {
        widgets.add(_buildExitRow(rowNum));
      } else {
        widgets.add(_buildSeatRow(rowIdx));
      }
    }
    return widgets;
  }

  Widget _buildExitRow(int rowNum) {
    return Container(
      width: 390,
      height: 35,
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: 7,
          top: 5,
          child: Row(children: [
            const Icon(Icons.exit_to_app, color: kRed, size: 20),
            const SizedBox(width: 4),
            const Text('Exit',
                style: TextStyle(
                    color: kRed,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400)),
          ]),
        ),
        for (final pos in [113.0, 149.0, 186.0, 223.0, 260.0])
          Positioned(
            left: pos,
            top: 10,
            child: Text('$rowNum',
                style: const TextStyle(
                    color: kRed,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500)),
          ),
        Positioned(
          right: 7,
          top: 5,
          child: Row(children: [
            const Text('Exit',
                style: TextStyle(
                    color: kRed,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400)),
            const SizedBox(width: 4),
            const Icon(Icons.exit_to_app, color: kRed, size: 20),
          ]),
        ),
      ]),
    );
  }

  Widget _buildSeatRow(int rowIdx) {
    final rowNum = rowIdx + 1;
    final seats = _grid[rowIdx];
    final hasSelected = seats.any((s) => s.status == SeatStatus.selected);

    return SizedBox(
      width: 390,
      height: 90,
      child: Stack(children: [
        // Row number (in aisle between C and D)
        Positioned(
          top: 24,
          left: 7,
          right: 3,
          child: Center(
            child: Text(
              '$rowNum',
              style: TextStyle(
                color: hasSelected ? kRed : kRed,
                fontSize: 13,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        for (int col = 0; col < 6; col++)
          _buildSeatWidget(rowIdx, col, seats[col]),
      ]),
    );
  }

  Widget _buildSeatWidget(int rowIdx, int col, Seat seat) {
    final x = kColX[col];

    Color seatColor;
    Color tagColor;
    Border? seatBorder;

// warna berdasarkan harga
    if (seat.price >= 200000) {
      tagColor = const Color(0xFFDCE8FF); // biru muda
    } else if (seat.price >= 100000) {
      tagColor = const Color.fromARGB(255, 199, 251, 202); // hijau muda
    } else {
      tagColor = const Color(0xFFDFF5E1); // hijau muda
    }

    switch (seat.status) {
      case SeatStatus.occupied:
        seatColor = kRed;
        seatBorder = null;
        tagColor = kGrey;
        break;

      case SeatStatus.available:
        seatColor = Colors.white;
        seatBorder = Border.all(color: kRed, width: 1);
        break;

      case SeatStatus.selected:
        seatColor = const Color(0xFF72CD74); // kursi hijau saat dipilih
        tagColor = kGrey;
        seatBorder = Border.all(color: const Color(0xFF2E7D32), width: 2);
        break;
    }

    return Positioned(
      left: x,
      top: 0,
      child: GestureDetector(
        onTap: seat.status != SeatStatus.occupied
            ? () => _toggleSeat(rowIdx, col)
            : null,
        child: Column(
          children: [
            // Seat body
            Container(
              width: 54,
              height: 63,
              decoration: BoxDecoration(
                color: seatColor,
                borderRadius: BorderRadius.circular(10),
                border: seatBorder,
              ),
              child: Center(
                child: seat.status == SeatStatus.occupied
                    ? const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 22,
                      )
                    : seat.status == SeatStatus.selected
                        ? Text(
                            seat.label, // contoh: 1A, 2B, dst
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : null,
              ),
            ),

            const SizedBox(height: 3),

            // Price tag
            // Price tag
            Container(
              width: 54,
              height: 20,
              decoration: BoxDecoration(
                color: tagColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: seat.status == SeatStatus.selected
                    ? Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          color: kRed, // warna lingkaran
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : Text(
                        (seat.price / 1000).toStringAsFixed(1),
                        style: const TextStyle(
                          color: Color(0xFF0F0F0F),
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
