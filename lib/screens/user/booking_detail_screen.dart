import 'package:flutter/material.dart';
import 'package:project1/screens/user/widgets/atur_kursi.dart';
import 'widgets/kwitansi_sheet.dart';

const Color _kRed = Color(0xFFC42D27);
const Color _kRedBg = Color(0xFFFFE6E5);
const Color _kRedBtn = Color.fromARGB(255, 238, 125, 121); // 50% transparency

class BookingDetailScreen extends StatefulWidget {
  const BookingDetailScreen({super.key});

  @override
  State<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  int _selectedNav = 0;
  bool _showTotalDetail = false;

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      backgroundColor: _kRedBg,
      body: Stack(
        children: [
          Column(
            children: [
              // ── EzyTix Top Bar ───────────────────────────────────────────
              Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(16, topPad + 8, 16, 10),
                child: Row(
                  children: [
                    // Logo
                    Image.asset(
                      'assets/images/ezytix.png',
                      height: 32,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => const Text(
                        'EzyTix',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: _kRed,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.alarm_rounded,
                        size: 20, color: Color(0xFF555555)),
                    const SizedBox(width: 6),
                    const Icon(Icons.notifications_none_rounded,
                        size: 20, color: Color(0xFF555555)),
                  ],
                ),
              ),

              // ── AppBar merah ─────────────────────────────────────────────
              Container(
                color: _kRed,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.white, size: 18),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Informasi Pemesanan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text('Cari',
                          style: TextStyle(
                              color: _kRed,
                              fontWeight: FontWeight.w700,
                              fontSize: 13)),
                    ),
                  ],
                ),
              ),

              // ── Scrollable body ──────────────────────────────────────────
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      _buildBookingInfoCard(),
                      const SizedBox(height: 20),
                      _buildFlightCard(),
                      const SizedBox(height: 20),
                      _buildPenumpangCard(),
                      const SizedBox(height: 20),
                      _buildKontakCard(),
                      const SizedBox(height: 20),
                      _buildKursiCard(),
                      const SizedBox(height: 20),
                      _buildCatatanCard(),
                      const SizedBox(height: 20),
                      _buildActionRow(),
                      const SizedBox(height: 20),
                      _buildTotalCard(),
                      SizedBox(height: 80 + bottomPad),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // ── Bayar Button (fixed bottom) ──────────────────────────────────
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(16, 10, 16, 16 + bottomPad),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _kRed,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    'Bayar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Booking Info Card ────────────────────────────────────────────────────
  Widget _buildBookingInfoCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('Kode Pemesanan - ',
                style: TextStyle(fontSize: 13, color: Color(0xFF3D3C3C))),
            const Text('AHFIXD',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF1A1A1A))),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF4CAF50),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('Booked',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text('Dipesan Oleh :',
            style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
        const Text('d75va001',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A1A))),
        const SizedBox(height: 6),
        const Text('Tanggal Pemesanan :',
            style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
        const Text('26 Jan 2026, 16:11 WIB (GMT+7)',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A1A))),
        const SizedBox(height: 6),
        const Text('Batas waktu pembayaran :',
            style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
        const Text('27 Jan 2026, 16:12 WIB (GMT+7)',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A1A))),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
            decoration: BoxDecoration(
              color: _kRedBtn,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: _kRed, width: 1.5),
            ),
            child: const Text('Copy',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 13)),
          ),
        ),
      ],
    );
  }

  // ── Flight Card ──────────────────────────────────────────────────────────
  Widget _buildFlightCard() {
    return _card(
      child: Column(
        children: [
          Row(
            children: const [
              Text('Keberangkatan  - 27 Feb 2026',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A))),
              Spacer(),
              Icon(Icons.keyboard_arrow_down_rounded, color: Color(0xFF555555)),
            ],
          ),
          const SizedBox(height: 4),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('IUI919 - Economy - B',
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, color: _kRed)),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Airline Logo
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 4,
                        offset: Offset(0, 1))
                  ],
                ),
                child: ClipOval(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      'assets/images/lionair.png',
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) =>
                          const Icon(Icons.flight, color: _kRed, size: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Departure
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('27 Feb - 08:00',
                      style: TextStyle(fontSize: 11, color: Color(0xFF555555))),
                  Text('Pekanbaru',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A1A1A))),
                  Text('PKU',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A))),
                ],
              ),
              const SizedBox(width: 6),
              const Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Direct',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: _kRed)),
                    Text('1j 45m',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFF666666))),
                    Icon(Icons.arrow_forward_rounded, size: 16, color: _kRed),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              // Arrival
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('27 Feb - 07:45',
                      style: TextStyle(fontSize: 11, color: Color(0xFF555555))),
                  Text('Jakarta',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A1A1A))),
                  Text('CGK',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A1A))),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ── Mini Bottom Nav ───────────────────────────────────────────────────────

  Widget _navItem(int index, IconData icon, String label) {
    final sel = _selectedNav == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedNav = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 24, color: sel ? _kRed : const Color(0xFF888888)),
          const SizedBox(height: 2),
          Text(label,
              style: TextStyle(
                  fontSize: 10,
                  color: sel ? _kRed : const Color(0xFF888888),
                  fontWeight: sel ? FontWeight.w700 : FontWeight.normal)),
        ],
      ),
    );
  }

  // ── Penumpang Card ────────────────────────────────────────────────────────
  Widget _buildPenumpangCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header icon + label — di LUAR border container
        const Row(
          children: [
            Icon(Icons.person_outline_rounded,
                size: 18, color: Color(0xFF333333)),
            SizedBox(width: 6),
            Text('Penumpang',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A1A))),
          ],
        ),
        const SizedBox(height: 8),
        // Border container — "1 Dewasa" + detail penumpang di DALAM
        ClipRRect(
          child: _card(
            padding: EdgeInsets.zero,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              foregroundDecoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFB8B8B9),
                  width: 1.2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "1 Dewasa" — baris pertama di dalam border
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: const Text('1 Dewasa',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: _kRed)),
                  ),
                  // Nama penumpang header
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    color: _kRedBg,
                    child: const Text('1. MR. FAJRI AGUSTRYANSYAH (Dewasa)',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: _kRed)),
                  ),
                  // Detail isi
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _infoRow('Nomor Identitas', '-'),
                        const SizedBox(height: 4),
                        _infoRow('Nomor Tiket', '-'),
                        const SizedBox(height: 10),
                        const Row(
                          children: [
                            Icon(Icons.airline_seat_recline_normal_rounded,
                                size: 16, color: Color(0xFF333333)),
                            SizedBox(width: 4),
                            Text('Kursi',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: BoxDecoration(
                            color: _kRedBg,
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(5)),
                            border: Border.all(color: const Color(0xFFDDDDDD)),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.flight_takeoff_rounded,
                                  size: 14, color: Color(0xFF555555)),
                              SizedBox(width: 4),
                              Text('PKU',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: Icon(Icons.double_arrow_rounded,
                                    size: 15, color: _kRed),
                              ),
                              Text('CGK',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              Text(' (Pergi)',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              Spacer(),
                              Icon(Icons.airline_seat_recline_normal_rounded,
                                  size: 16, color: Color(0xFF3D3C3C)),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFDDDDDD)),
                            borderRadius: const BorderRadius.vertical(
                                bottom: Radius.circular(5)),
                          ),
                          child: const Text('Pemilihan kursi tidak tersedia',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFF888888))),
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
    );
  }

  // ── Kontak Card ───────────────────────────────────────────────────────────
  Widget _buildKontakCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.contact_phone_outlined,
                size: 18, color: Color(0xFF333333)),
            SizedBox(width: 6),
            Text('Detail Kontak Penumpang',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A1A))),
          ],
        ),
        const SizedBox(height: 8),
        _card(
          border: Border.all(
            color: const Color(0xFFB8B8B9),
            width: 1.2,
          ),
          child: Table(
            columnWidths: const {
              0: IntrinsicColumnWidth(), // label
              1: FixedColumnWidth(16), // " : "
              2: FlexColumnWidth(), // nilai
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Nama',
                      style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                ),
                Text(' : ',
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                Text('FAJRI AGUSTRIANSYAH',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
              ]),
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Telepon',
                      style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                ),
                Text(' : ',
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                Text('6285367778770',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
              ]),
              TableRow(children: [
                Text('Email',
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                Text(' : ',
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                Text('kopikaba01@gmail.com',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
              ]),
            ],
          ),
        ),
      ],
    );
  }

  // ── Kursi Card ────────────────────────────────────────────────────────────
  Widget _buildKursiCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header — di LUAR card
        Row(
          children: [
            const Icon(Icons.airline_seat_recline_normal_rounded,
                size: 18, color: Color(0xFF333333)),
            const SizedBox(width: 6),
            const Text('Kursi',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A1A))),
            const Spacer(),
            InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AturKursiScreen(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: _kRed,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Atur Kursi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Card — konten kursi di DALAM
        _card(
          padding: EdgeInsets.zero,
          border: Border.all(color: const Color(0xFFB8B8B9), width: 1.2),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                child: const Row(
                  children: [
                    Icon(Icons.flight_takeoff_rounded,
                        size: 14, color: Color(0xFF555555)),
                    SizedBox(width: 4),
                    Text('PKU',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Icon(Icons.double_arrow_rounded,
                          size: 15, color: _kRed),
                    ),
                    Text('CGK',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    Text(' (Pergi)',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    Spacer(),
                    Text('Rp. 0',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ── Catatan Card ──────────────────────────────────────────────────────────
  Widget _buildCatatanCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header — di LUAR card
        const Row(
          children: [
            Icon(Icons.edit_note_rounded, size: 18, color: Color(0xFF333333)),
            SizedBox(width: 6),
            Text('Catatan',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A1A))),
          ],
        ),
        const SizedBox(height: 8),
        // Card — isi catatan di DALAM
        _card(
          border: Border.all(color: const Color(0xFFB8B8B9), width: 1.2),
          child: const Text(
            '1. SYSTEM: Free Baggage ADT (1 pax) IU\n(PKU - CGK): 10KG',
            style:
                TextStyle(fontSize: 13, color: Color(0xFF444444), height: 1.5),
          ),
        ),
      ],
    );
  }

  // ── Cancel / Kwitansi Row ─────────────────────────────────────────────────
  Widget _buildActionRow() {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: Text('Anda ingin membatalkan?',
                  style: TextStyle(fontSize: 13, color: Color(0xFF1A1A1A))),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
              decoration: BoxDecoration(
                color: _kRed,
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text('Batal',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Expanded(
              child: Text('Anda ingin print Kwitansi?',
                  style: TextStyle(fontSize: 13, color: Color(0xFF1A1A1A))),
            ),
            GestureDetector(
              onTap: () => KwitansiSheet.show(context),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: BoxDecoration(
                  color: const Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text('Kwitansi',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ── Total Harga Card ──────────────────────────────────────────────────────
  Widget _buildTotalCard() {
    return _card(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => setState(() => _showTotalDetail = !_showTotalDetail),
            child: Row(
              children: [
                const Text('Total Harga',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A1A1A))),
                const Spacer(),
                const Text('Rp. 1.243.500',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: _kRed)),
                const SizedBox(width: 4),
                Icon(
                  _showTotalDetail
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  color: _kRed,
                  size: 22,
                ),
              ],
            ),
          ),
          if (_showTotalDetail) ...[
            const SizedBox(height: 10),
            const Divider(height: 1, color: Color(0xFFEEEEEE)),
            const SizedBox(height: 8),
            _priceRow('Tiket', 'Rp. 1.223.500'),
            const SizedBox(height: 4),
            _priceRow('Biaya Jasa', 'Rp. 20.000'),
            const SizedBox(height: 4),
            _priceRow('Ancillaries', 'Rp. 0'),
          ],
        ],
      ),
    );
  }

  // ── Helpers ───────────────────────────────────────────────────────────────

  Widget _card(
      {required Widget child, EdgeInsets? padding, BoxBorder? border}) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: border,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      children: [
        Text(label,
            style: const TextStyle(fontSize: 12, color: Color(0xFF666666))),
        const SizedBox(width: 6),
        Expanded(
          child: Text(value,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1A1A1A))),
        ),
      ],
    );
  }

  Widget _priceRow(String label, String value) {
    return Row(
      children: [
        Text(label,
            style: const TextStyle(fontSize: 13, color: Color(0xFF3D3C3C))),
        const Spacer(),
        Text(value,
            style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A1A))),
      ],
    );
  }
}
