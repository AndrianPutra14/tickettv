import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project1/screens/user/widgets/atur_kursi.dart';
// import 'user/widgets/atur_kursi.dart';
import 'widgets/flight_models.dart';
import 'widgets/asuransi_sheet.dart' as sheet;
import 'widgets/info_persetujuan_sheet.dart';

class InformasiPemesananScreen extends StatefulWidget {
  final FareModel fare;
  final FlightModel flight;

  const InformasiPemesananScreen({
    super.key,
    required this.fare,
    required this.flight,
  });

  @override
  State<InformasiPemesananScreen> createState() =>
      _InformasiPemesananScreenState();
}

class _InformasiPemesananScreenState extends State<InformasiPemesananScreen> {
  // Controllers
  final _namaDepanController = TextEditingController();
  final _namaBelakangController = TextEditingController();
  final _namaLengkapController = TextEditingController();
  final _hpController = TextEditingController();
  final _hpAltController = TextEditingController();
  final _emailController = TextEditingController();
  final _keteranganController = TextEditingController();
  final _keteranganFileController = TextEditingController();

  // Passport controllers (muncul jika bukan WNI)
  final _noPasporController = TextEditingController();
  final _tglLahirController = TextEditingController();
  final _tglKadaluarsaController = TextEditingController();
  final _negaraPenerbitController = TextEditingController();

  // Bagasii
  String? _selectedBagasi;
  final List<Map<String, dynamic>> _bagasiOptions = [
    {'label': 'Tidak ada baggage yang dipilih', 'price': null},
    {'label': '5kg extra bag', 'price': 700400.0},
    {'label': '10kg extra bag', 'price': 1400800.0},
    {'label': '20kg extra bag', 'price': 2801600.0},
    {'label': '30kg extra bag', 'price': 4202400.0},
    {'label': '40kg extra bag', 'price': 5603200.0},
  ];

  String _selectedTitle = 'Tn';
  String _selectedNegara = 'Indonesia';

  double get _totalPrice => widget.fare.price * 1000;

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

  @override
  void dispose() {
    _namaDepanController.dispose();
    _namaBelakangController.dispose();
    _namaLengkapController.dispose();
    _hpController.dispose();
    _hpAltController.dispose();
    _emailController.dispose();
    _keteranganController.dispose();
    _keteranganFileController.dispose();
    _noPasporController.dispose();
    _tglLahirController.dispose();
    _tglKadaluarsaController.dispose();
    _negaraPenerbitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFlightInfoCard(),
            const SizedBox(height: 10),
            _buildRincianHarga(),
            const SizedBox(height: 10),
            _buildCatatanCard(),
            const SizedBox(height: 10),
            _buildPenumpangSection(),
            const SizedBox(height: 10),
            _buildKontakPenumpangSection(),
            const SizedBox(height: 10),
            _buildInformasiTambahanSection(),
            const SizedBox(height: 10),
            _buildCatatanBottomCard(),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: _buildPesanButton(),
    );
  }

  // ── AppBar ──────────────────────────────────────────────────────────────────
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: kRed,
      foregroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: const Text(
        'Informasi Pemesanan',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }

  // ── Flight Info Card ─────────────────────────────────────────────────────────
  Widget _buildFlightInfoCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row: Berangkat — styled like fare_detail_sheet
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            decoration: BoxDecoration(
              color: const Color(0xFFEFEDED),
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: const Color(0xFFE0E0E0)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded, color: kRed, size: 22),
                const SizedBox(width: 8),
                const Text(
                  'Berangkat  -  Jun, 27 Feb 2026',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700, color: kRed),
                ),
                const Spacer(),
                Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 15),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Table headers
          const Row(
            children: [
              Expanded(
                  child: Text('MASKAPAI',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('FLIGHT NO.',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('RUTE',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('ETD/ETA',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
            ],
          ),
          const Divider(height: 8, thickness: 1, color: Color(0xFFDDDDDD)),

          // Row 1
          Padding(
            padding: const EdgeInsets.only(
              top: 1,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    // Row 1: airline code | flight no | depAp | dep
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                                widget.flight.no.replaceAll(RegExp(r'\d'), ''),
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(widget.flight.no,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(widget.flight.depAp,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(widget.flight.dep,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                      ],
                    ),
                    const SizedBox(height: 2),
                    // Row 2: airline code | ECO-B9 | arrAp | arr
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                                widget.flight.no.replaceAll(RegExp(r'\d'), ''),
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(
                                '${widget.fare.cls}-${widget.fare.code.replaceAll(' ', '')}',
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(widget.flight.arrAp,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                        Expanded(
                            child: Text(widget.flight.arr,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    height: 1.5))),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 3,
                  bottom: 0,
                  child: Center(
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        // color: const Color(0xFF4CAF50),
                        border: Border.all(
                            color: const Color(0xFF4CAF50), width: 1.5),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: const Icon(Icons.check,
                          color: Color(0xFF4CAF50), size: 16, weight: 700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, thickness: 1, color: Color(0xFFDDDDDD)),
          const SizedBox(height: 8),
          // Ganti button (right-aligned)
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text('Ganti',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Rincian Harga [Section 3] ─────────────────────────────────────────────
  Widget _buildRincianHarga() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header — styled like fare_detail_sheet
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFEFEDED),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    color: kRed,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const Text(
                    '\$: ',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                const SizedBox(width: 8),
                const Text('Rincian Harga',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: kRed)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 8),

          // JT label
          const Text('JT',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w900)),
          const SizedBox(height: 6),

          // Harga Dewasa dengan diskon
          Builder(builder: (context) {
            final originalPrice = _totalPrice * 1.25;
            const discountPct = 20;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(fontSize: 13, color: Color(0xFF3D3C3C)),
                    children: [
                      TextSpan(text: 'Dewasa  '),
                      TextSpan(
                        text: '- x1',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Badge diskon + harga asli dicoret
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: kRed,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            '$discountPct%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Rp. ${_fmtRp(originalPrice)}',
                          style: const TextStyle(
                            fontSize: 11,
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
                      'Rp. ${_fmtRp(_totalPrice)}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: kRed,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
          const SizedBox(height: 4),
          _priceRow(
            'Biaya Jasa',
            'Rp. 20.000',
          ),
          const SizedBox(height: 4),
          _priceRow('Ancillaries', 'Rp. 0'),
          const SizedBox(height: 6),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 6),
          _priceRow('Total', 'Rp. ${_fmtRp(_totalPrice + 20000)}',
              bold: true, red: true),
          const SizedBox(height: 10),

          // Copy button
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 7),
                decoration: BoxDecoration(
                  color: kRed.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: kRed, width: 1.5),
                ),
                child: const Text('Copy',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Catatan (atas) ────────────────────────────────────────────────────────
  Widget _buildCatatanCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.edit_note_rounded, size: 20, color: Color(0xFF121212)),
              SizedBox(width: 6),
              Text('Catatan',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212))),
            ],
          ),
          const SizedBox(height: 8),
          _bulletNote('Informasi fare rules, klik ', linkText: 'disini'),
          _bulletNote('Komisi 0 rupiah untuk rute SIN-CGK dikelas promo (X,V), '
              'silahkan untuk menambahkan Service Fee sebagai komisi'),
          _bulletNote(
              'Validity passport > 6 bulan dari tanggal terakhir penerbangan'),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (ctx) => const _CatatanSheet(),
            ),
            child: const Text('Tampilan selengkapnya...',
                style: TextStyle(
                    color: kRed,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: kRed)),
          ),
        ],
      ),
    );
  }

  // ── Penumpang ─────────────────────────────────────────────────────────────
  Widget _buildPenumpangSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(Icons.person_outline_rounded, 'Penumpang'),
          const SizedBox(height: 12),

          // "Dewasa" label in red
          const Text('Dewasa',
              style: TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w700, color: kRed)),
          const SizedBox(height: 10),

          // Title dropdown + Nama Depan
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title dropdown
              Container(
                width: 80,
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFCCCCCC)),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedTitle,
                    isDense: true,
                    items: ['Tn', 'Ny', 'Nn']
                        .map((t) => DropdownMenuItem(
                            value: t,
                            child:
                                Text(t, style: const TextStyle(fontSize: 13))))
                        .toList(),
                    onChanged: (v) => setState(() => _selectedTitle = v!),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(child: _inputField('Nama Depan', _namaDepanController)),
            ],
          ),
          const SizedBox(height: 8),
          _inputField('Nama Belakang', _namaBelakangController),
          const SizedBox(height: 6),

          const Text('* Sesuai identitas diri/identitas paspor dan harus back.',
              style: TextStyle(fontSize: 11, color: Color(0xFF888888))),
          const SizedBox(height: 10),

          // Nationality dropdown
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFCCCCCC)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedNegara,
                isExpanded: true,
                isDense: true,
                items: ['Indonesia', 'Malaysia', 'Singapore']
                    .map((n) => DropdownMenuItem(
                        value: n,
                        child: Text(n, style: const TextStyle(fontSize: 13))))
                    .toList(),
                onChanged: (v) => setState(() => _selectedNegara = v!),
              ),
            ),
          ),

          // ── Data Paspor (hanya jika bukan WNI) ──────────────────────────
          if (_selectedNegara != 'Indonesia') ...[
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8F8),
                border: Border.all(color: const Color(0xFFEECCCC)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Row(
                    children: [
                      const Icon(Icons.badge_outlined, size: 18, color: kRed),
                      const SizedBox(width: 6),
                      const Text(
                        'Data Paspor',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: kRed,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // No. Paspor
                  _inputField('No. Paspor', _noPasporController),
                  const SizedBox(height: 8),

                  // Tanggal Lahir
                  GestureDetector(
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime(1990),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        helpText: 'Pilih Tanggal Lahir',
                      );
                      if (picked != null) {
                        setState(() {
                          _tglLahirController.text =
                              '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
                        });
                      }
                    },
                    child: AbsorbPointer(
                      child: _inputField(
                        'Tanggal Lahir  (DD/MM/YYYY)',
                        _tglLahirController,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Tanggal Kadaluarsa
                  GestureDetector(
                    onTap: () async {
                      final picked = await showDatePicker(
                        context: context,
                        initialDate:
                            DateTime.now().add(const Duration(days: 365 * 2)),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100),
                        helpText: 'Tanggal Kadaluarsa Paspor',
                      );
                      if (picked != null) {
                        setState(() {
                          _tglKadaluarsaController.text =
                              '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
                        });
                      }
                    },
                    child: AbsorbPointer(
                      child: _inputField(
                        'Tanggal Kadaluarsa  (DD/MM/YYYY)',
                        _tglKadaluarsaController,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Negara Penerbit
                  _inputField(
                      'Negara Penerbit Paspor', _negaraPenerbitController),

                  const SizedBox(height: 8),
                  const Text(
                    '* Validity passport > 6 bulan dari tanggal terakhir penerbangan',
                    style: TextStyle(fontSize: 11, color: Color(0xFF888888)),
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 12),

          // Bagasi sub-section
          const Text('Bagasi',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF444444))),
          const SizedBox(height: 6),

          // ── Rute header + delete icon ──
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              border: Border.all(color: const Color(0xFFDDDDDD)),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(6)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded,
                    color: Color(0xFF555555), size: 15),
                const SizedBox(width: 6),
                const Text('PKU',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.double_arrow_rounded,
                      size: 14, color: Color(0xFF888888)),
                ),
                const Text('CGK',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
                const SizedBox(width: 6),
                const Text('(Pergi)',
                    style: TextStyle(fontSize: 12, color: Color(0xFF666666))),
                const Spacer(),
                GestureDetector(
                  onTap: () => setState(() => _selectedBagasi = null),
                  child: const Icon(Icons.delete_outline_rounded,
                      size: 18, color: Color(0xFF888888)),
                ),
              ],
            ),
          ),

          // ── Dropdown pilih bagasi ──
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xFFDDDDDD)),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(6)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String?>(
                value: _selectedBagasi,
                isExpanded: true,
                isDense: true,
                hint: const Text(
                  'Pilih Bagasi',
                  style: TextStyle(fontSize: 15, color: Color(0xFF888888)),
                ),
                icon: const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Color(0xFF555555)),
                selectedItemBuilder: (context) {
                  return _bagasiOptions.map((opt) {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        opt['label'] as String,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF222222)),
                      ),
                    );
                  }).toList();
                },
                items: _bagasiOptions.map((opt) {
                  final isNone = opt['price'] == null;
                  return DropdownMenuItem<String?>(
                    value: opt['label'] as String,
                    child: Container(
                      color: isNone ? const Color(0xFF6D6D6D) : Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 6),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              opt['label'] as String,
                              style: TextStyle(
                                fontSize: 13,
                                color: isNone
                                    ? Colors.white
                                    : const Color(0xFF222222),
                              ),
                            ),
                          ),
                          if (!isNone)
                            Text(
                              'Rp. ${_fmtRp(opt['price'] as double)}',
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF222222)),
                            ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (v) => setState(() => _selectedBagasi = v),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Kontak Penumpang ──────────────────────────────────────────────────────
  Widget _buildKontakPenumpangSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(Icons.contacts_outlined, 'Kontak Penumpang'),
          const SizedBox(height: 12),
          _inputField('Nama Lengkap', _namaLengkapController),
          const SizedBox(height: 8),
          _phoneField('+62', 'HP / Phone', _hpController),
          const SizedBox(height: 8),
          _phoneField('+62', 'Alternative Phone', _hpAltController),
          const SizedBox(height: 8),
          _inputField('Email', _emailController,
              keyboardType: TextInputType.emailAddress),
        ],
      ),
    );
  }

  // ── Informasi Tambahan (Opsional) ─────────────────────────────────────────
  Widget _buildInformasiTambahanSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(
              Icons.info_outline_rounded, 'Informasi Tambahan (Opsional)'),
          const SizedBox(height: 12),
          _inputField('Keterangan', _keteranganController, maxLines: 3),
          const SizedBox(height: 8),
          _inputField('Keterangan File', _keteranganFileController,
              maxLines: 2),
          const SizedBox(height: 8),

          // Unggah Dokumen row
          Container(
            padding: const EdgeInsets.only(left: 6),
            height: 56,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFCCCCCC)),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFFC2C1C1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: const Text(
                      "Unggah Dokumen",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Pilih",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'NOTE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFD32F2F), // merah
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' : Ukuran maksimal file 1300 kB',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF3D3C3C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  // ── Catatan (bawah) ───────────────────────────────────────────────────────
  Widget _buildCatatanBottomCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.edit_note_rounded, size: 20, color: Color(0xFF121212)),
              SizedBox(width: 6),
              Text('Catatan',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212))),
            ],
          ),
          const SizedBox(height: 8),
          _bulletNote('Informasi fare rules, klik ',
              linkText: 'disini', context: context),
          _bulletNote('Komisi 0 rupiah untuk rute SIN-CGK dikelas promo (X,V), '
              'silahkan untuk menambahkan Service Fee sebagai komisi'),
          _bulletNote(
              'Validity passport > 6 bulan dari tanggal terakhir penerbangan'),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (ctx) => const _CatatanSheet(),
            ),
            child: const Text('Tampilan selengkapnya...',
                style: TextStyle(
                    color: kRed,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: kRed)),
          ),
        ],
      ),
    );
  }

  // ── Tombol Pesan ──────────────────────────────────────────────────────────
  Widget _buildPesanButton() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () async {
            // Tampilkan AsuransiSheet dan simpan hasilnya
            // ✕ → null (kembali ke layar ini)
            // OK → true, Tidak Perlu Asuransi → false (lanjut ke info persetujuan)
            final result = await showModalBottomSheet<bool>(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return const sheet.AsuransiSheet();
              },
            );

            // Hanya tampilkan InfoPersetujuanSheet jika bukan ✕ yang ditekan
            if (!mounted || result == null) return;
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) {
                return InfoPersetujuanSheet(
                  onKonfirmasi: () {
                    // TODO: lanjutkan proses pemesanan
                  },
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kRed,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Pesan',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  // ── Helpers ───────────────────────────────────────────────────────────────

  BoxDecoration _cardDecor() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.04),
          blurRadius: 6,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  /// Plain icon + title header (used by most sections)
  Widget _sectionHeader(IconData icon, String title) {
    return Row(
      children: [
        Icon(icon, size: 20, color: const Color(0xFF333333)),
        const SizedBox(width: 6),
        Text(title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF121212))),
      ],
    );
  }

  /// Numbered badge header: [3] Rincian Harga
  Widget _numberedSectionHeader(int number, String title) {
    return Row(
      children: [
        Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: kRed,
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Text(
            '$number',
            style: const TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(width: 8),
        Text(title,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF121212))),
      ],
    );
  }

  Widget _priceRow(String label, String value,
      {bool bold = false, bool red = false, bool hasPlus = false}) {
    return Row(
      children: [
        Text(label,
            style: TextStyle(
                fontSize: 13,
                color: red ? kRed : const Color(0xFF3D3C3C),
                fontWeight: bold ? FontWeight.w700 : FontWeight.normal)),
        const Spacer(),
        if (hasPlus) ...[
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: const Color(0xFFFFEBEB),
                borderRadius: BorderRadius.circular(3)),
            child: const Icon(Icons.add, color: kRed, size: 14),
          ),
          const SizedBox(width: 6),
        ],
        Text(value,
            style: TextStyle(
                fontSize: 13,
                fontWeight: bold ? FontWeight.w700 : FontWeight.w600,
                color: red ? kRed : const Color(0xFF1A1A1A))),
      ],
    );
  }

  Widget _inputField(String hint, TextEditingController controller,
      {TextInputType keyboardType = TextInputType.text, int maxLines = 1}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 13),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 13, color: Color(0xFFAAAAAA)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: kRed),
        ),
      ),
    );
  }

  /// Read-only display field (grey background)
  Widget _labelReadOnlyField(String label, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        border: Border.all(color: const Color(0xFFDDDDDD)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(value,
          style: const TextStyle(fontSize: 13, color: Color(0xFF3D3C3C))),
    );
  }

  Widget _phoneField(
      String prefix, String hint, TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFCCCCCC)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          // Flag + code prefix
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Color(0xFFCCCCCC)),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/flag.png',
                    width: 20,
                    height: 14,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.flag, size: 18, color: kRed)),
                const SizedBox(width: 4),
                Text(prefix,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              style: const TextStyle(fontSize: 13),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle:
                    const TextStyle(fontSize: 13, color: Color(0xFFAAAAAA)),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bulletNote(String text, {String? linkText, BuildContext? context}) {
    final TapGestureRecognizer? recognizer =
        (linkText != null && context != null)
            ? (TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context!, // ← tambahkan ! karena context nullable
                  MaterialPageRoute(builder: (_) => AturKursiScreen()),
                );
              })
            : null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 5, right: 8),
            decoration:
                const BoxDecoration(color: kRed, shape: BoxShape.circle),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                    fontSize: 12, color: Color(0xFF444444), height: 1.45),
                children: [
                  TextSpan(text: text),
                  if (linkText != null)
                    TextSpan(
                      text: linkText,
                      recognizer: recognizer,
                      style: const TextStyle(
                          color: kRed,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                          decorationColor: kRed),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Catatan Bottom Sheet ─────────────────────────────────────────────────
class _CatatanSheet extends StatelessWidget {
  const _CatatanSheet();

  @override
  Widget build(BuildContext context) {
    final notes = [
      const _NoteData(
        text: 'Informasi fare rules, klik ',
        linkText: 'disini',
      ),
      const _NoteData(
        text: 'Block seat dapat dilakukan untuk Reservasi dengan jadwal '
            'penerbangan > 48 jam sebelum DOT dan tidak berlaku untuk '
            'kelas promo (Q,T,V,S,H,L)',
      ),
      const _NoteData(
        text: 'Permintaan add ',
        boldText: 'GFF',
        suffix: ' dapat melalui Helpdesk',
      ),
      const _NoteData(
        text: 'Permintaan Void diperkenankan (tanggal issued dan tanggal '
            'void adalah sama)',
      ),
      const _NoteData(
        text: 'Permintaan Rebook, Refund dan Reroute dapat melalui Helpdesk',
      ),
      const _NoteData(
        text: 'Rute rute tertentu tidak dapat menggunakan kelas ',
        boldText: 'V',
        suffix: ' untuk Return dann Connecting Flight',
      ),
      const _NoteData(
        text: 'Ketentuan untuk penerbangan Return atau Connecting dengan '
            'kombinasi kelas mengikuti kelas terendah',
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Header ────────────────────────────────────────────────────
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: kRed,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              children: [
                const Icon(Icons.edit_rounded, color: Colors.white, size: 22),
                const SizedBox(width: 10),
                const Text(
                  'Catatan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white, size: 24),
                ),
              ],
            ),
          ),

          // ── Body ──────────────────────────────────────────────────────
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: notes.map((n) => _buildNoteItem(n)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(_NoteData note) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 7,
            height: 7,
            margin: const EdgeInsets.only(top: 10, right: 10),
            decoration: const BoxDecoration(
              color: kRed,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF333333),
                  height: 1.5,
                ),
                children: [
                  TextSpan(text: note.text),
                  if (note.linkText != null)
                    TextSpan(
                      text: note.linkText,
                      style: const TextStyle(
                        color: kRed,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: kRed,
                      ),
                    ),
                  if (note.boldText != null)
                    TextSpan(
                      text: note.boldText,
                      style: const TextStyle(
                        color: kRed,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  if (note.suffix != null) TextSpan(text: note.suffix),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoteData {
  final String text;
  final String? linkText;
  final String? boldText;
  final String? suffix;

  const _NoteData({
    required this.text,
    this.linkText,
    this.boldText,
    this.suffix,
  });
}
