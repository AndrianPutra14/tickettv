import 'package:flutter/material.dart';

const _kRed = Color(0xFFC42D27);
const _kBg = Color(0xFFF7F7F7);
const _kTextDark = Color(0xFF1A1A1A);
const _kTextGrey = Color(0xFF9E9E9E);
const _kDivider = Color(0xFFEEEEEE);

// ─── Models ───────────────────────────────────────────────────────────────────
const _statusOptions = [
  'ALL',
  'BOOKED',
  'TICKETED',
  'CANCELLED',
];
const _airlineOptions = [
  'Semua Maskapai',
  'Lion Air',
  'Garuda Indonesia',
  'Citilink',
  'Batik Air',
];

// ─── Page ─────────────────────────────────────────────────────────────────────
class MyBookingPage extends StatefulWidget {
  const MyBookingPage({super.key});

  @override
  State<MyBookingPage> createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  final _bookingCodeCtrl = TextEditingController();
  DateTime _fromDate = DateTime(2026, 2, 19);
  DateTime _toDate = DateTime(2026, 2, 19);
  String _status = 'ALL';
  String _airline = 'Semua Maskapai';

  @override
  void dispose() {
    _bookingCodeCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate({required bool isFrom}) async {
    final initial = isFrom ? _fromDate : _toDate;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: const ColorScheme.light(primary: _kRed),
        ),
        child: child!,
      ),
    );
    if (picked == null) return;
    setState(() {
      if (isFrom) {
        _fromDate = picked;
        if (_toDate.isBefore(picked)) _toDate = picked;
      } else {
        _toDate = picked;
      }
    });
  }

  void _showStatusPicker() {
    _showOptionSheet(
      title: 'Status',
      options: _statusOptions,
      selected: _status,
      onSelect: (v) => setState(() => _status = v),
    );
  }

  void _showAirlinePicker() {
    _showOptionSheet(
      title: 'Marketing Airline',
      options: _airlineOptions,
      selected: _airline,
      onSelect: (v) => setState(() => _airline = v),
    );
  }

  void _showOptionSheet({
    required String title,
    required List<String> options,
    required String selected,
    required ValueChanged<String> onSelect,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFDDDDDD),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 12),
            Text(title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: _kTextDark)),
            const SizedBox(height: 8),
            ...options.map((opt) => ListTile(
                  title: Text(opt,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: opt == selected
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: opt == selected ? _kRed : _kTextDark)),
                  trailing: opt == selected
                      ? const Icon(Icons.check_rounded, color: _kRed)
                      : null,
                  onTap: () {
                    onSelect(opt);
                    Navigator.pop(context);
                  },
                )),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime d) {
    const days = ['Sen', 'Sel', 'Rab', 'Kam', 'Jum', 'Sab', 'Min'];
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'Mei',
      'Jun',
      'Jul',
      'Agu',
      'Sep',
      'Okt',
      'Nov',
      'Des'
    ];
    return '${days[d.weekday - 1]}, ${d.day} ${months[d.month - 1]} ${d.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _kBg,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            _buildSearchBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        _buildField(
                          icon: Icons.edit_outlined,
                          label: 'Kode Pemesanan',
                          child: TextField(
                            controller: _bookingCodeCtrl,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: _kTextDark),
                            decoration: const InputDecoration(
                              hintText: 'Kode Pemesanan',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: _kTextDark),
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                        _buildDivider(),
                        _buildDateField(
                          label: 'Dari',
                          date: _fromDate,
                          onTap: () => _pickDate(isFrom: true),
                        ),
                        _buildDivider(),
                        _buildDateField(
                          label: 'Sampai',
                          date: _toDate,
                          onTap: () => _pickDate(isFrom: false),
                        ),
                        _buildDivider(),
                        _buildDropdownField(
                          icon: Icons.check_box_outlined,
                          label: 'Status',
                          value: _status,
                          onTap: _showStatusPicker,
                        ),
                        _buildDivider(),
                        _buildDropdownField(
                          icon: Icons.check_box_outlined,
                          label: 'Marketing Airline',
                          value: _airline,
                          onTap: _showAirlinePicker,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _buildSearchButton(),
          ],
        ),
      ),
      // bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildAppBar() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      child: Row(
        children: [
          // Logo
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Ezy',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: _kRed,
                    fontFamily: 'sans-serif',
                  ),
                ),
                TextSpan(
                  text: 'tix',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: _kRed,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Icon(Icons.add_circle_outline_rounded,
              size: 24, color: _kTextDark),
          const SizedBox(width: 16),
          const Icon(Icons.alarm_rounded, size: 24, color: _kTextDark),
          const SizedBox(width: 16),
          const Icon(Icons.notifications_none_rounded,
              size: 24, color: _kTextDark),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _kRed,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      child: Row(
        children: const [
          Icon(Icons.menu_rounded, color: Colors.white, size: 22),
          SizedBox(width: 12),
          Text(
            'Cari pesanan anda disini',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField({
    required IconData icon,
    required String label,
    required Widget child,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 22, color: _kTextGrey),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: const TextStyle(fontSize: 12, color: _kTextGrey)),
                const SizedBox(height: 3),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateField({
    required String label,
    required DateTime date,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: _buildField(
        icon: Icons.calendar_month_outlined,
        label: label,
        child: Text(
          _formatDate(date),
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: _kTextDark,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(icon, size: 22, color: _kTextGrey),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style: const TextStyle(fontSize: 12, color: _kTextGrey)),
                  const SizedBox(height: 3),
                  Text(value,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: _kTextDark)),
                ],
              ),
            ),
            const Icon(Icons.arrow_drop_down_rounded,
                color: _kTextDark, size: 22),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() =>
      const Divider(height: 1, thickness: 1, color: _kDivider, indent: 52);

  Widget _buildSearchButton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // TODO: implement search
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: _kRed,
            elevation: 0,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: const Text(
            'Cari Pemesanan',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
