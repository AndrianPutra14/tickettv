import 'package:flutter/material.dart';
import 'package:project1/screens/user/widgets/atur_kursi.dart';
import 'widgets/kwitansi_sheet.dart';
import 'payments/payment_method_sheet.dart';

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
                  onPressed: () => PaymentMethodSheet.show(context),
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
            children: [
              const Text('Keberangkatan  - 27 Feb 2026',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A))),
              const Spacer(),
              GestureDetector(
                onTap: () => _showTripDetail(context),
                child: const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF555555)),
              ),
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
            GestureDetector(
              onTap: () => _showCancelConfirmation(context),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
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

  // ── Payment Method Sheet ───────────────────────────────────────────────────
  void _showPaymentMethodSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Handle bar ──────────────────────────────────────────────
              const SizedBox(height: 12),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: const Color(0xFFDDDDDD),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),

              // ── Header row ──────────────────────────────────────────────
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: _kRedBg,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.wallet_rounded,
                        size: 20, color: _kRed),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Metode Pembayaran',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1A1A1A)),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close_rounded,
                        size: 24, color: Color(0xFF666666)),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // ── Row 1: Credit Card & Auto Transfer ──────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _paymentOption(
                    icon: Icons.credit_card_rounded,
                    label: 'Credit Card',
                    onTap: () => Navigator.pop(context),
                  ),
                  _paymentOption(
                    icon: Icons.swap_horiz_rounded,
                    label: 'Auto Transfer',
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // ── Row 2: Virtual Account, Payment Link, Auto Ticket ───────
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _paymentOption(
                    icon: Icons.account_balance_rounded,
                    label: 'Virtual Account',
                    onTap: () => Navigator.pop(context),
                  ),
                  _paymentOption(
                    icon: Icons.link_rounded,
                    label: 'Payment Link',
                    onTap: () => Navigator.pop(context),
                  ),
                  _paymentOption(
                    icon: Icons.confirmation_number_rounded,
                    label: 'Auto Ticket',
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  Widget _paymentOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              color: _kRed,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 32, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }

  // ── Trip Detail Sheet ──────────────────────────────────────────────────────
  void _showTripDetail(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Header ──────────────────────────────────────────────────
              SizedBox(
                height: 60,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Red ellipse bg
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
                          color: _kRed,
                        ),
                      ),
                    ),
                    // Icon + Title
                    const Positioned(
                      left: 16,
                      top: 8,
                      bottom: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.route_outlined,
                              size: 20, color: Colors.black),
                          SizedBox(width: 8),
                          Text(
                            'Detail Perjalanan',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // X button (Ellipseyell)
                    Positioned(
                      right: 0,
                      top: 16,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Ellipseyell.png',
                              width: 60,
                              height: 40,
                              fit: BoxFit.fill,
                            ),
                            const Text(
                              'X',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1A1A1A),
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, color: Color(0xFFE0E0E0)),

              // ── Timeline body ────────────────────────────────────────────
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Time column
                      const SizedBox(
                        width: 56,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('17:30',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1A1A1A))),
                                Text('6 Feb',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF888888))),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('1j 50m',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF555555))),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('17:30',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1A1A1A))),
                                Text('6 Feb',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF888888))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),

                      // Vertical line + dots
                      Column(
                        children: [
                          // Top dot (hollow)
                          Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: _kRed, width: 2),
                            ),
                          ),
                          // Line
                          Expanded(
                            child: Container(
                              width: 2,
                              color: _kRed,
                            ),
                          ),
                          // Bottom dot (filled)
                          Container(
                            width: 14,
                            height: 14,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: _kRed,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 14),

                      // Content column
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Departure
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jakarta (CGK)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1A1A1A))),
                                SizedBox(height: 2),
                                Text('Soekarno-Hatta International Airport',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF888888))),
                              ],
                            ),

                            // Airline info
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                children: [
                                  // Airline logo
                                  Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border:
                                          Border.all(color: _kRed, width: 1.5),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color(0x14000000),
                                            blurRadius: 4)
                                      ],
                                    ),
                                    child: ClipOval(
                                      child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Image.asset(
                                          'assets/images/lionair.png',
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) =>
                                              const Icon(Icons.flight,
                                                  color: _kRed, size: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Lion Air',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF1A1A1A))),
                                      const SizedBox(height: 2),
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF555555)),
                                          children: [
                                            TextSpan(text: 'IUI919 | Economy '),
                                            TextSpan(
                                              text: 'T',
                                              style: TextStyle(
                                                  color: _kRed,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // Arrival
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Denpasar (DPS)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1A1A1A))),
                                SizedBox(height: 2),
                                Text('Ngurah Rai (Bali) International Airport',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xFF888888))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ── Footer banner ────────────────────────────────────────────
              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDE8E8),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: _kRed.withOpacity(0.3)),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.calendar_today_rounded, size: 16, color: _kRed),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Kamu akan sampai pada Jumat, 6 Februari',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: _kRed),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ── Cancel Confirmation Sheet ─────────────────────────────────────────────
  void _showCancelConfirmation(BuildContext context) {
    const String bookingCode = 'AZRQRP';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                height: 250,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 300,
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
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color.fromARGB(255, 243, 225, 184),
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            padding: const EdgeInsets.fromLTRB(20, 60, 20, 12),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.warning_amber_rounded,
                                  size: 55,
                                  color: Colors.orange,
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  'Batalkan Pemesanan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: _kRed,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Color(0xFF444444),
                                      height: 1.5,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text:
                                            'Apakah Anda ingin membatalkan pesanan dengan kode pemesanan ',
                                      ),
                                      const TextSpan(
                                        text: 'AZRQRP',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF1A1A1A),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(28)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 15, 25, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(Icons.close,
                                  size: 26, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ── Button Card ─────────────────────────────────
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
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
                      Navigator.pop(context);
                      // TODO cancel booking logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _kRed,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Konfirmasi',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ── Total Harga Card ──────────────────────────────────────────────────────
  // ── helper: format angka jadi "1.223.500" ──────────────────────────────
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

  Widget _buildTotalCard() {
    // Harga tiket setelah diskon
    const double tiketDiskon = 1223500;
    const double discountPct = 20;
    final double tiketAsli =
        tiketDiskon / (1 - discountPct / 100); // harga sebelum diskon

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

            // ── Tiket row dengan diskon (sama seperti fare_detail_sheet) ──
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Label "Tiket  Dewasa - x1"
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 13, color: Color(0xFF3D3C3C)),
                    children: [
                      TextSpan(text: 'Tiket  '),
                      TextSpan(
                        text: 'Dewasa - x1',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Kolom harga: badge+coret di atas, diskon di bawah
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Badge % + harga asli dicoret
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: _kRed,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${discountPct.toInt()}%',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Rp. ${_fmtRp(tiketAsli)}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF999999),
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Color(0xFF999999),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    // Harga setelah diskon
                    Text(
                      'Rp. ${_fmtRp(tiketDiskon)}',
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: _kRed),
                    ),
                  ],
                ),
              ],
            ),

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
