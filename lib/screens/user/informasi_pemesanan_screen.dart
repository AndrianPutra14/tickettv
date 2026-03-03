import 'package:flutter/material.dart';
import 'widgets/flight_models.dart';

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

class _InformasiPemesananScreenState
    extends State<InformasiPemesananScreen> {
  // Controllers
  final _namaDepanController = TextEditingController();
  final _namaBelakangController = TextEditingController();
  final _namaLengkapController = TextEditingController();
  final _hpController = TextEditingController();
  final _hpAltController = TextEditingController();
  final _emailController = TextEditingController();
  final _keteranganController = TextEditingController();
  final _keteranganFileController = TextEditingController();

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
            _buildKontakAgenSection(),
            const SizedBox(height: 10),
            _buildBagasiSection(),
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
          // Header row: icon + label + date + green check
          Row(
            children: [
              const Icon(Icons.flight_takeoff_rounded, color: kRed, size: 18),
              const SizedBox(width: 6),
              const Text(
                'Berangkat',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              const Text(
                '  -  Jun, 27 Feb 2026',
                style: TextStyle(fontSize: 13, color: Color(0xFF555555)),
              ),
              const Spacer(),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: const Color(0xFF4CAF50),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                    const Icon(Icons.check, color: Colors.white, size: 15),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Table headers
          const Row(
            children: [
              Expanded(
                  child: Text('MASKAPAI',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('FLIGHT NO.',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('RUTE',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
              Expanded(
                  child: Text('ETD/ETA',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF888888)))),
            ],
          ),
          const Divider(height: 10, thickness: 1, color: Color(0xFFDDDDDD)),

          // Row 1: UI | IU916 | PKU | 06:00
          Row(
            children: [
              const Expanded(
                  child: Text('UI',
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
              Expanded(
                  child: Text(widget.flight.no,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
              Expanded(
                  child: Text(widget.flight.depAp,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
              Expanded(
                  child: Text(widget.flight.dep,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
            ],
          ),
          const SizedBox(height: 3),

          // Row 2: ECO-B9 | | CGK | 07:45
          Row(
            children: [
              Expanded(
                child: Text(
                  '${widget.fare.cls}-${widget.fare.code.replaceAll(' ', '')}',
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              const Expanded(child: SizedBox()),
              Expanded(
                  child: Text(widget.flight.arrAp,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
              Expanded(
                  child: Text(widget.flight.arr,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600))),
            ],
          ),
          const SizedBox(height: 10),

          // Ganti button (right-aligned)
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
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
          // Section header with numbered badge
          _numberedSectionHeader(3, 'Rincian Harga'),
          const SizedBox(height: 10),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 8),

          // JT label
          const Text('JT',
              style:
                  TextStyle(fontSize: 13, fontWeight: FontWeight.w900)),
          const SizedBox(height: 6),

          _priceRow('Dewasa  - x1', 'Rp. ${_fmtRp(_totalPrice)}',
              bold: true),
          const SizedBox(height: 4),
          _priceRow('Biaya Jasa', 'Rp. 0', hasPlus: true),
          const SizedBox(height: 4),
          _priceRow('Ancillaries', 'Rp. 0'),
          const SizedBox(height: 6),
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 6),
          _priceRow('Total', 'Rp. ${_fmtRp(_totalPrice)}',
              bold: true, red: true),
          const SizedBox(height: 10),

          // Copy button
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(6),
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
          Row(
            children: const [
              Icon(Icons.edit_note_rounded,
                  size: 20, color: Color(0xFF121212)),
              SizedBox(width: 6),
              Text('Catatan',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212))),
            ],
          ),
          const SizedBox(height: 10),
          _bulletNote('Informasi fare rules, klik ', linkText: 'disini'),
          const SizedBox(height: 6),
          _bulletNote(
              'Komisi 0 rupiah untuk rute SIN-CGK dikelas promo (X,V), '
              'silahkan untuk menambahkan Service Fee sebagai komisi'),
          const SizedBox(height: 6),
          _bulletNote(
              'Validity passport > 6 bulan dari tanggal terakhir penerbangan'),
          const SizedBox(height: 8),
          const Text('Tampilan selengkapnya...',
              style: TextStyle(
                  color: kRed,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: kRed)),
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

          const Text('Dewasa',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: kRed)),
          const SizedBox(height: 10),

          // Title + Nama Depan
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title dropdown
              Container(
                width: 78,
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
                        .map((t) =>
                            DropdownMenuItem(value: t, child: Text(t)))
                        .toList(),
                    onChanged: (v) => setState(() => _selectedTitle = v!),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                  child: _inputField('Nama Depan', _namaDepanController)),
            ],
          ),
          const SizedBox(height: 8),
          _inputField('Nama Belakang', _namaBelakangController),
          const SizedBox(height: 8),

          const Text(
              '* Sesuai identitas diri/identitas paspor dan harus back.',
              style: TextStyle(fontSize: 11, color: Color(0xFF888888))),
          const SizedBox(height: 10),

          // Nationality dropdown
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
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
                    .map((n) =>
                        DropdownMenuItem(value: n, child: Text(n)))
                    .toList(),
                onChanged: (v) =>
                    setState(() => _selectedNegara = v!),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Bagasi route inside Penumpang
          const Text('Bagasi',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF444444))),
          const SizedBox(height: 6),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF0F0),
              border: Border.all(color: const Color(0xFFEEDDDD)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                const Icon(Icons.luggage_outlined, color: kRed, size: 18),
                const SizedBox(width: 8),
                const Expanded(
                    child: Text('PKU >> CGK (Pergi)',
                        style: TextStyle(fontSize: 12))),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: kRed,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text('Pilih Bagasi',
                      style:
                          TextStyle(color: Colors.white, fontSize: 11)),
                ),
              ],
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

  // ── Kontak Agen ───────────────────────────────────────────────────────────
  Widget _buildKontakAgenSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader(Icons.business_outlined, 'Kontak Agen'),
          const SizedBox(height: 12),
          _labelReadOnlyField('Agen', 'PT. Mega Sagara Perkasa'),
          const SizedBox(height: 8),
          _labelReadOnlyField('No.HP', '+62 8123960338'),
          const SizedBox(height: 8),
          _labelReadOnlyField('Email', 'fajri.agara@nasagroup.net'),
        ],
      ),
    );
  }

  // ── Bagasi ────────────────────────────────────────────────────────────────
  Widget _buildBagasiSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _sectionHeader(Icons.luggage_outlined, 'Bagasi'),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: kRed,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text('Atur bagasi',
                    style: TextStyle(color: Colors.white, fontSize: 11)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF0F0),
              border: Border.all(color: const Color(0xFFEEDDDD)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Row(
              children: [
                Icon(Icons.luggage_outlined, color: kRed, size: 18),
                SizedBox(width: 8),
                Expanded(
                    child: Text('PKU >> CGK (Pergi)',
                        style: TextStyle(fontSize: 12))),
                Text('Rp. 0',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
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
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFCCCCCC)),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                const Expanded(
                    child: Text('Unggah Dokumen',
                        style: TextStyle(
                            fontSize: 13, color: Color(0xFF888888)))),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF555555),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text('Pilih',
                      style:
                          TextStyle(color: Colors.white, fontSize: 12)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Text('NOTE : Ukuran maksimal file 1300 kB',
              style: TextStyle(fontSize: 11, color: Color(0xFF888888))),
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
          Row(
            children: const [
              Icon(Icons.edit_note_rounded,
                  size: 20, color: Color(0xFF121212)),
              SizedBox(width: 6),
              Text('Catatan',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF121212))),
            ],
          ),
          const SizedBox(height: 10),
          _bulletNote('Informasi fare rules, klik ', linkText: 'disini'),
          const SizedBox(height: 6),
          _bulletNote(
              'Komisi 0 rupiah untuk rute SIN-CGK dikelas promo (X,V), '
              'silahkan untuk menambahkan Service Fee sebagai komisi'),
          const SizedBox(height: 6),
          _bulletNote(
              'Validity passport > 6 bulan dari tanggal terakhir penerbangan'),
          const SizedBox(height: 8),
          const Text('Tampilan selengkapnya...',
              style: TextStyle(
                  color: kRed,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: kRed)),
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: kRed,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text('Pesan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16)),
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
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w700),
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
                fontWeight:
                    bold ? FontWeight.w700 : FontWeight.normal)),
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
          const SizedBox(width: 8),
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
      {TextInputType keyboardType = TextInputType.text,
      int maxLines = 1}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: const TextStyle(fontSize: 13),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            const TextStyle(fontSize: 13, color: Color(0xFFAAAAAA)),
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

  /// Read-only field with label on left and value on right
  Widget _labelReadOnlyField(String label, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        border: Border.all(color: const Color(0xFFDDDDDD)),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(value,
          style:
              const TextStyle(fontSize: 13, color: Color(0xFF3D3C3C))),
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
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: Color(0xFFCCCCCC)),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/Ellipsered.png',
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
                hintStyle: const TextStyle(
                    fontSize: 13, color: Color(0xFFAAAAAA)),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 11),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Bullet note with optional inline link text
  Widget _bulletNote(String text, {String? linkText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• ',
            style:
                TextStyle(fontSize: 12, color: Color(0xFF444444))),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF444444),
                  height: 1.45),
              children: [
                TextSpan(text: text),
                if (linkText != null)
                  TextSpan(
                    text: linkText,
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
    );
  }
}
