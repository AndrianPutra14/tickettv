import 'package:flutter/material.dart';

// ── Seat statee ────────────────────────────────────────────────────
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // r = rasio skala dari desain asli 390px
          final double s = constraints.maxWidth;
          final double r = s / 390;

          // kColX original: [3, 65, 123, 211, 269, 327] — diskalakan dengan r
          final List<double> kColX = [3.0, 65.0, 123.0, 211.0, 269.0, 327.0]
              .map((x) => x * r)
              .toList();

          return Column(
            children: [
              _buildHeader(s, r),
              _buildRouteSubBar(s, r),
              _buildPassengerBar(r),
              _buildLegendBar(s, r),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildSeatArea(s, r, kColX),
                ),
              ),
              _buildBottomBar(s, r),
            ],
          );
        },
      ),
    );
  }

  // ── Header ────────────────────────────────────────────────────
  Widget _buildHeader(double s, double r) {
    return SizedBox(
      width: s,
      height: 128 * r,
      child: Stack(children: [
        Positioned.fill(child: Container(color: Colors.white)),
        Positioned(
          left: -112 * r,
          top: -59 * r,
          child: Container(
            width: 242 * r,
            height: 155 * r,
            decoration: const ShapeDecoration(
                color: Color(0xFFFFE6E5), shape: OvalBorder()),
          ),
        ),
        Positioned(
          left: 310 * r,
          top: 12 * r,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 102 * r,
                height: 65 * r,
                decoration: const ShapeDecoration(
                  color: Color(0xFFF9E7BF),
                  shape: OvalBorder(),
                ),
              ),
              Positioned(
                left: 20 * r,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    color: const Color(0xFFC42D27),
                    size: 28 * r,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          top: 82 * r,
          child: Container(width: s, height: 46 * r, color: kRed),
        ),
        Positioned(
          left: 23 * r,
          top: 87 * r,
          child: Container(
            width: 345 * r,
            height: 35 * r,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20 * r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('PKU',
                    style: TextStyle(
                        color: const Color(0xFF3D3C3C),
                        fontSize: 12 * r,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 6 * r),
                Icon(Icons.arrow_forward,
                    size: 14 * r, color: const Color(0xFF3D3C3C)),
                SizedBox(width: 6 * r),
                Text('CGK  (Pergi)',
                    style: TextStyle(
                        color: const Color(0xFF3D3C3C),
                        fontSize: 12 * r,
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
  Widget _buildRouteSubBar(double s, double r) {
    return Container(
      width: s,
      height: 41 * r,
      color: kRedLight,
      child: Stack(children: [
        Positioned(
          left: 23 * r,
          top: 14 * r,
          child: Row(children: [
            Text('PKU',
                style: TextStyle(
                    color: const Color(0xFF3D3C3C),
                    fontSize: 12 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600)),
            SizedBox(width: 4 * r),
            Icon(Icons.arrow_forward,
                size: 12 * r, color: const Color(0xFF3D3C3C)),
            SizedBox(width: 4 * r),
            Text('CGK',
                style: TextStyle(
                    color: const Color(0xFF3D3C3C),
                    fontSize: 12 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600)),
          ]),
        ),
        Positioned(
          bottom: 0,
          left: 7 * r,
          child: Container(
              width: 105 * r,
              height: 5 * r,
              decoration: BoxDecoration(
                  color: kRed, borderRadius: BorderRadius.circular(10 * r))),
        ),
      ]),
    );
  }

  // ── Passenger bar ─────────────────────────────────────────────
  Widget _buildPassengerBar(double r) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 62 * r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8 * r),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 9 * r),
                  Container(
                    width: 7 * r,
                    height: 32 * r,
                    color: const Color(0x26C42D27),
                  ),
                  SizedBox(width: 8 * r),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1. MR. FAJRI AGUSTRYANSYAH',
                        style: TextStyle(
                          color: const Color(0xFF3D3C3C),
                          fontSize: 12 * r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4 * r),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$_selectedSeatDisplay | Rp. ${_formatPrice(_totalPrice)}',
                          style: TextStyle(
                            color: const Color(0xFF3D3C3C),
                            fontSize: 12 * r,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8 * r),
                  Container(
                    width: 7 * r,
                    height: 36 * r,
                    color: const Color(0x26C42D27),
                  ),
                  SizedBox(width: 9 * r),
                ],
              ),
              SizedBox(height: 8 * r),
              Container(
                margin:
                    EdgeInsets.only(bottom: 1 * r, left: 7 * r, right: 7 * r),
                height: 5 * r,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(10 * r),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Legend bar ────────────────────────────────────────────────
  Widget _buildLegendBar(double s, double r) {
    return Container(
      width: s,
      height: 38 * r,
      color: const Color.fromARGB(255, 238, 237, 237),
      child: Row(children: [
        SizedBox(width: 26 * r),
        _legendDot(Colors.white, border: kRed, r: r),
        SizedBox(width: 4 * r),
        Text('Tersedia',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10 * r,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
        SizedBox(width: 12 * r),
        _legendDot(kRed, border: kRed, r: r),
        SizedBox(width: 4 * r),
        Text('Terisi',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10 * r,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
        SizedBox(width: 12 * r),
        _legendDot(const Color(0xff72cd74),
            border: const Color(0xFF2E7D32), r: r),
        SizedBox(width: 4 * r),
        Text('Dipilih',
            style: TextStyle(
                color: Colors.black,
                fontSize: 10 * r,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600)),
      ]),
    );
  }

  Widget _legendDot(Color fill, {Color? border, double r = 1.0}) {
    return Container(
      width: 16 * r,
      height: 16 * r,
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(3 * r),
        border: border != null ? Border.all(color: border, width: 1.5) : null,
      ),
    );
  }

  // ── Bottom bar ────────────────────────────────────────────────
  Widget _buildBottomBar(double s, double r) {
    return Container(
      width: s,
      height: 63 * r,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFA1A1A1)),
      ),
      child: Row(children: [
        SizedBox(width: 26 * r),
        Text(
          'Harga Total : Rp. ${_formatPrice(_totalPrice.toInt())}',
          style: TextStyle(
              color: kRed,
              fontSize: 14 * r,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        Container(
          width: 99 * r,
          height: 35 * r,
          margin: EdgeInsets.only(right: 16 * r),
          decoration: BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.circular(8 * r),
              border: Border.all(color: kRed)),
          child: Center(
            child: Text('OK',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800)),
          ),
        ),
      ]),
    );
  }

  // ── Seat area ─────────────────────────────────────────────────
  Widget _buildSeatArea(double s, double r, List<double> kColX) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        _buildColumnHeaders(s, r, kColX),
        ..._buildAllRows(s, r, kColX),
        const SizedBox(height: 8),
      ]),
    );
  }

  Widget _buildColumnHeaders(double s, double r, List<double> kColX) {
    return SizedBox(
      width: s,
      height: 45 * r,
      child: Stack(children: [
        for (int i = 0; i < 6; i++)
          Positioned(
            left: kColX[i] + 20 * r,
            top: 8 * r,
            child: Text(['A', 'B', 'C', 'D', 'E', 'F'][i],
                style: TextStyle(
                    color: const Color(0xFF3D3C3C),
                    fontSize: 20 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500)),
          ),
      ]),
    );
  }

  List<Widget> _buildAllRows(double s, double r, List<double> kColX) {
    final widgets = <Widget>[];
    for (int rowIdx = 0; rowIdx < 20; rowIdx++) {
      final rowNum = rowIdx + 1;
      if (kExitRows.contains(rowNum)) {
        widgets.add(_buildExitRow(rowNum, s, r));
      } else {
        widgets.add(_buildSeatRow(rowIdx, s, r, kColX));
      }
    }
    return widgets;
  }

  Widget _buildExitRow(int rowNum, double s, double r) {
    return Container(
      width: s,
      height: 35 * r,
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: 7 * r,
          top: 5 * r,
          child: Row(children: [
            Icon(Icons.exit_to_app, color: kRed, size: 20 * r),
            SizedBox(width: 4 * r),
            Text('Exit',
                style: TextStyle(
                    color: kRed,
                    fontSize: 15 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400)),
          ]),
        ),
        for (final pos in [113.0, 149.0, 186.0, 223.0, 260.0])
          Positioned(
            left: pos * r,
            top: 10 * r,
            child: Text('$rowNum',
                style: TextStyle(
                    color: kRed,
                    fontSize: 13 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500)),
          ),
        Positioned(
          right: 7 * r,
          top: 5 * r,
          child: Row(children: [
            Text('Exit',
                style: TextStyle(
                    color: kRed,
                    fontSize: 15 * r,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400)),
            SizedBox(width: 4 * r),
            Icon(Icons.exit_to_app, color: kRed, size: 20 * r),
          ]),
        ),
      ]),
    );
  }

  Widget _buildSeatRow(int rowIdx, double s, double r, List<double> kColX) {
    final rowNum = rowIdx + 1;
    final seats = _grid[rowIdx];
    final hasSelected = seats.any((s) => s.status == SeatStatus.selected);

    return SizedBox(
      width: s,
      height: 90 * r,
      child: Stack(children: [
        // Row number — tepat di tengah lorong antara kolom C dan D
        // Kolom C ujung kanan: kColX[2] + 54 = 123+54 = 177
        // Kolom D ujung kiri:  kColX[3]       = 211
        // Tengah lorong di desain 390px = (177+211)/2 = 194
        Positioned(
          top: 24 * r,
          left: 194 * r -
              15 * r, // geser kiri setengah lebar teks agar benar-benar center
          child: SizedBox(
            width: 30 * r,
            child: Center(
              child: Text(
                '$rowNum',
                style: TextStyle(
                  color: kRed,
                  fontSize: 13 * r,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        for (int col = 0; col < 6; col++)
          _buildSeatWidget(rowIdx, col, seats[col], r, kColX),
      ]),
    );
  }

  Widget _buildSeatWidget(
      int rowIdx, int col, Seat seat, double r, List<double> kColX) {
    final x = kColX[col];

    Color seatColor;
    Color tagColor;
    Border? seatBorder;

    // warna berdasarkan harga
    if (seat.price >= 200000) {
      tagColor = const Color(0xFFDCE8FF);
    } else if (seat.price >= 100000) {
      tagColor = const Color.fromARGB(255, 199, 251, 202);
    } else {
      tagColor = const Color(0xFFDFF5E1);
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
        seatColor = const Color(0xFF72CD74);
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
              width: 54 * r,
              height: 63 * r,
              decoration: BoxDecoration(
                color: seatColor,
                borderRadius: BorderRadius.circular(10 * r),
                border: seatBorder,
              ),
              child: Center(
                child: seat.status == SeatStatus.occupied
                    ? Icon(Icons.close, color: Colors.white, size: 22 * r)
                    : seat.status == SeatStatus.selected
                        ? Text(
                            seat.label,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14 * r,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        : null,
              ),
            ),

            SizedBox(height: 3 * r),

            // Price tag
            Container(
              width: 54 * r,
              height: 20 * r,
              decoration: BoxDecoration(
                color: tagColor,
                borderRadius: BorderRadius.circular(5 * r),
              ),
              child: Center(
                child: seat.status == SeatStatus.selected
                    ? Container(
                        width: 16 * r,
                        height: 16 * r,
                        decoration: const BoxDecoration(
                          color: kRed,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 9 * r,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : Text(
                        (seat.price / 1000).toStringAsFixed(1),
                        style: TextStyle(
                          color: const Color(0xFF0F0F0F),
                          fontSize: 10 * r,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
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
