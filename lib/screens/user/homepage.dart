import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flight_results_page.dart';

const Color primaryRed = Color(0xFFC42D27);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          _HomeTab(),
          _MyBookingTab(),
          _PartnerTab(),
        ],
      ),
      bottomNavigationBar: _BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// ─── Bottom Navigation Bar ───────────────────────────────────────────────────

class _BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  const _BottomNavBar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTap,
          backgroundColor: Colors.white,
          selectedItemColor: primaryRed,
          unselectedItemColor: const Color(0xFFAAAAAA),
          selectedLabelStyle:
              const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: _NavIcon(
                  icon: Icons.home_rounded, isSelected: selectedIndex == 0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _NavIcon(
                  icon: Icons.confirmation_number_outlined,
                  isSelected: selectedIndex == 1),
              label: 'My Booking',
            ),
            BottomNavigationBarItem(
              icon: _NavIcon(
                  icon: Icons.person_outline_rounded,
                  isSelected: selectedIndex == 2),
              label: 'Partner',
            ),
          ],
        ),
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  const _NavIcon({required this.icon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return Container(
        width: 44,
        height: 36,
        decoration: BoxDecoration(
          color: primaryRed,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.white, size: 22),
      );
    }
    return Icon(icon, size: 24);
  }
}

// ─── Home Tab ────────────────────────────────────────────────────────────────

class _HomeTab extends StatefulWidget {
  const _HomeTab();

  @override
  State<_HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<_HomeTab> {
  String _from = 'Jakarta (CGK)';
  String _to = 'Surabaya (SUB)';
  bool _roundTrip = false;
  int _dewasa = 1;
  int _anak = 0;
  int _bayi = 0;

  void _swapLocations() {
    setState(() {
      final tmp = _from;
      _from = _to;
      _to = tmp;
    });
  }

  String get _passengerLabel {
    final total = _dewasa + _anak + _bayi;
    return '$total Penumpang';
  }

  void _showPassengerSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (_) => _PassengerSheet(
        dewasa: _dewasa,
        anak: _anak,
        bayi: _bayi,
        onConfirm: (d, a, b) {
          setState(() {
            _dewasa = d;
            _anak = a;
            _bayi = b;
          });
        },
      ),
    );
  }

  void _showFilterSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (_) => const _FilterSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.of(context).padding.top;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Red Header ──────────────────────────────────────────────────
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: primaryRed,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            padding: EdgeInsets.fromLTRB(24, topPad + 20, 24, 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Greeting row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hi, Teman Ezytix!',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Mau kemana hari ini?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Pesawat tab
                const Text(
                  'Pesawat',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          // ── Search Card (overlapping header) ────────────────────────────
          Transform.translate(
            offset: const Offset(0, -24),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Keberangkatan
                    _LocationField(label: 'Keberangkatan', value: _from),
                    const SizedBox(height: 6),

                    // Swap button
                    Center(
                      child: GestureDetector(
                        onTap: _swapLocations,
                        child: Container(
                          width: 38,
                          height: 38,
                          decoration: const BoxDecoration(
                            color: primaryRed,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.swap_vert_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Kedatangan
                    _LocationField(label: 'Kedatangan', value: _to),
                    const SizedBox(height: 12),

                    // Date Pergi + toggle row
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE0E0E0)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 10),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today_rounded,
                              color: Color(0xFFAAAAAA), size: 18),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Pergi',
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xFFAAAAAA)),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Sen, 26 Jan 2026',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF1A1A1A),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            'Pulang- pergi?',
                            style: TextStyle(
                                fontSize: 11, color: Color(0xFFAAAAAA)),
                          ),
                          const SizedBox(width: 4),
                          Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: _roundTrip,
                              onChanged: (val) =>
                                  setState(() => _roundTrip = val),
                              activeColor: primaryRed,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Date Pulang (muncul saat roundTrip aktif)
                    AnimatedSize(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      child: _roundTrip
                          ? Column(
                              children: [
                                const SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xFFE0E0E0)),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 10),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.calendar_today_rounded,
                                          color: Color(0xFFAAAAAA), size: 18),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Pulang',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Color(0xFFAAAAAA)),
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            'Kam, 29 Jan 2026',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF1A1A1A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ),
                    const SizedBox(height: 14),

                    // Penumpang
                    _DropdownRow(
                      icon: Icons.person_outline,
                      label: _passengerLabel,
                      onTap: _showPassengerSheet,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Divider(height: 1, color: Color(0xFFF0F0F0)),
                    ),

                    // Class
                    _DropdownRow(
                      icon: Icons.tune_rounded,
                      label: 'All Class, Semua Maskapai',
                      onTap: _showFilterSheet,
                    ),
                    const SizedBox(height: 20),

                    // Cari penerbangan
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => FlightResultsPage(
                                from: 'Jakarta (CGK)',
                                to: 'Surabaya (SUB)',
                                paxLabel: 'All Class . $_passengerLabel',
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryRed,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Cari Penerbangan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          // ── Premium Scroll Section ──────────────────────────────────────
          Transform.translate(
            offset: const Offset(0, -20),
            child: SizedBox(
              height: 195,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                children: [
                  // Card 1 – Premium
                  _PremiumCard(
                    gradient: const LinearGradient(
                      colors: [Color(0xFFB71C1C), Color(0xFFE53935)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    title: 'Premium',
                    subtitle:
                        'Upgrade ke Premium Partner &\nDapatkan Deviden dari Setiap\nTiket Terjual',
                    buttonLabel: 'Upgrade',
                    imagePath: 'assets/images/airplane.png',
                    onTap: () {},
                  ),
                  const SizedBox(width: 14),
                  // Card 2 – Promo
                  _PremiumCard(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1565C0), Color(0xFF42A5F5)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    title: 'Promo Spesial',
                    subtitle:
                        'Diskon hingga 50% untuk\npenerbangan domestik\npilihan hari ini!',
                    buttonLabel: 'Lihat Promo',
                    imagePath: 'assets/images/airplane.png',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

// ─── Premium Card ─────────────────────────────────────────────────────────────

class _PremiumCard extends StatelessWidget {
  final LinearGradient gradient;
  final String title;
  final String subtitle;
  final String buttonLabel;
  final String imagePath;
  final VoidCallback onTap;

  const _PremiumCard({
    required this.gradient,
    required this.title,
    required this.subtitle,
    required this.buttonLabel,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth - 40,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.fromLTRB(20, 18, 0, 18),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Teks + tombol (kiri)
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 14),
                OutlinedButton(
                  onPressed: onTap,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white60, width: 1.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 6),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    buttonLabel,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Gambar (kanan bawah)
          Positioned(
            right: 20,
            bottom: -40,
            child: Image.asset(
              imagePath,
              width: 170,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Reusable Widgets ─────────────────────────────────────────────────────────


class _LocationField extends StatelessWidget {
  final String label;
  final String value;
  const _LocationField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  const TextStyle(fontSize: 11, color: Color(0xFFAAAAAA))),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A1A),
            ),
          ),
        ],
      ),
    );
  }
}

class _DropdownRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const _DropdownRow(
      {required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF555555), size: 22),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF1A1A1A),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.arrow_drop_down_rounded,
              color: Color(0xFF555555), size: 22),
        ],
      ),
    );
  }
}

// ─── Passenger Sheet ──────────────────────────────────────────────────────────

class _PassengerSheet extends StatefulWidget {
  final int dewasa;
  final int anak;
  final int bayi;
  final void Function(int dewasa, int anak, int bayi) onConfirm;

  const _PassengerSheet({
    required this.dewasa,
    required this.anak,
    required this.bayi,
    required this.onConfirm,
  });

  @override
  State<_PassengerSheet> createState() => _PassengerSheetState();
}

class _PassengerSheetState extends State<_PassengerSheet> {
  late int _dewasa;
  late int _anak;
  late int _bayi;

  @override
  void initState() {
    super.initState();
    _dewasa = widget.dewasa;
    _anak = widget.anak;
    _bayi = widget.bayi;
  }

  void _change(int current, int delta, void Function(int) update,
      {int min = 0}) {
    final next = current + delta;
    if (next < min) return;
    setState(() => update(next));
  }

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final bottomPad = MediaQuery.of(context).padding.bottom;
    // Handle bar floating 22px di atas white sheet
    const floatingH = 22.0;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // ── White sheet mulai dari y=22 ──
        Padding(
          padding: const EdgeInsets.only(top: floatingH),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),

            // ── Header: image ellips merah (kiri) + image ellips cream X (kanan) ──
            SizedBox(
              height: 54,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Ellipseblue.png — geser kiri agar sisi kiri oval terpotong
                  // ClipRRect akan clip di x=0, sehingga terlihat D-shape (curved kanan)
                  Positioned(
                    left: -(sw * 0.18),
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/Ellipseblue.png',
                      width: sw * 0.76,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Teks "Atur Penumpang" — posisi dalam area merah yang terlihat
                  const Positioned(
                    left: 12,
                    top: 0,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        'Atur Penumpang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  // Ellipseyell.png — tombol X sudut kanan
                  Positioned(
                    right: 12,
                    top: 7,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Ellipseyell.png',
                            width: 80,
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

            // ── Rows ──
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _PassengerRow(
                label: 'Dewasa',
                sublabel: '(12 tahun ke atas)',
                count: _dewasa,
                onMinus: () => _change(_dewasa, -1, (v) => _dewasa = v, min: 1),
                onPlus: () => _change(_dewasa, 1, (v) => _dewasa = v),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Divider(
                  height: 1, thickness: 0.8, color: Color(0xFFE8E8E8)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _PassengerRow(
                label: 'Anak',
                sublabel: '(2 - 11 tahun)',
                count: _anak,
                onMinus: () => _change(_anak, -1, (v) => _anak = v),
                onPlus: () => _change(_anak, 1, (v) => _anak = v),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Divider(
                  height: 1, thickness: 0.8, color: Color(0xFFE8E8E8)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _PassengerRow(
                label: 'Bayi',
                sublabel: '(di bawah 2 tahun)',
                count: _bayi,
                onMinus: () => _change(_bayi, -1, (v) => _bayi = v),
                onPlus: () => _change(_bayi, 1, (v) => _bayi = v),
              ),
            ),
            const SizedBox(height: 28),

            // ── Cari Penerbangan ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    widget.onConfirm(_dewasa, _anak, _bayi);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC42D27),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Cari Penerbangan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24 + bottomPad),
                ],              // Column children
              ),                // Column
            ),                  // Container
          ),                    // ClipRRect
        ),                      // Padding

        // ── FLOATING: Handle bar di atas white sheet ──
        const Positioned(
          top: 8,
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              width: 44,
              height: 5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFCCCCCC),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              ),
            ),
          ),
        ),
      ],    // Stack children
    );      // return Stack
  }
}


class _PassengerRow extends StatelessWidget {
  final String label;
  final String sublabel;
  final int count;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const _PassengerRow({
    required this.label,
    required this.sublabel,
    required this.count,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Label — satu string (figma: color:0xFF3D3C3C, size:14, w400)
        Expanded(
          child: Text(
            '$label $sublabel',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF3D3C3C),
              height: 1,
            ),
          ),
        ),

        // ⊖ Minus (figma: w=25, h=25, OvalBorder abu-abu)
        GestureDetector(
          onTap: onMinus,
          child: Container(
            width: 25,
            height: 25,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 1.5,
                  color: Color(0xFFB8B8B9),
                ),
              ),
            ),
            child: const Icon(Icons.remove, size: 14, color: Color(0xFFB8B8B9)),
          ),
        ),

        // Count (figma: w=12, size:14, w600, color:0xFF3D3C3C)
        const SizedBox(width: 6),
        SizedBox(
          width: 20,
          child: Text(
            '$count',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3D3C3C),
              height: 1,
            ),
          ),
        ),
        const SizedBox(width: 6),

        // ⊕ Plus (figma: w=25, h=25, OvalBorder merah)
        GestureDetector(
          onTap: onPlus,
          child: Container(
            width: 25,
            height: 25,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                side: BorderSide(
                  width: 1.5,
                  color: Color(0xFFC42D27),
                ),
              ),
            ),
            child: const Icon(Icons.add, size: 14, color: Color(0xFFC42D27)),
          ),
        ),
      ],
    );
  }
}

// ─── Other Tabs ──────────────────────────────────────────────────────────────


class _MyBookingTab extends StatelessWidget {
  const _MyBookingTab();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('My Booking',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}

class _PartnerTab extends StatelessWidget {
  const _PartnerTab();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Partner',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// FILTER SHEET
// ─────────────────────────────────────────────────────────────────────────────
class _FilterSheet extends StatefulWidget {
  const _FilterSheet();

  @override
  State<_FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<_FilterSheet> {
  final Set<String> _selectedKelas = {'Economy', 'Business', 'First Class'};

  static const List<String> _allAirlines = [
    'Pelita Air (IP)',
    'Sriwijaya Air (SJ, IN)',
    'Special Offer Airline (10)',
    'Transnusa (8B)',
    'Aero Dili (8G)',
    'Trigana Air (IL)',
    'Scoot (TR)',
    'Aviastar (MV)',
    'Air China (CA)',
    'Ethiopian Airlines (ET)',
    'Batik Air (ID)',
    'Citilink (QG)',
    'Garuda Indonesia (GA)',
    'Lion Air (JT)',
    'Nam Air (IN)',
    'Wings Air (IW)',
  ];

  final Set<String> _selectedAirlines = {};
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _selectedAirlines.addAll(_allAirlines);
  }

  List<String> get _filteredAirlines => _allAirlines
      .where((a) => a.toLowerCase().contains(_searchQuery.toLowerCase()))
      .toList();

  bool get _semuaKelasSelected => _selectedKelas.length == 3;

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.of(context).size.width;
    final bottomPad = MediaQuery.of(context).padding.bottom;
    const floatingH = 22.0;
    const primaryRed = Color(0xFFC42D27);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // ── White sheet ──
        Padding(
          padding: const EdgeInsets.only(top: floatingH),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14),
              topRight: Radius.circular(14),
            ),
            child: Container(
              color: Colors.white,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.88,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 8),

                  // ── Header ──
                  SizedBox(
                    height: 54,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -(sw * 0.18),
                          top: 0,
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/Ellipseblue.png',
                            width: sw * 0.76,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Positioned(
                          left: 12,
                          top: 0,
                          bottom: 0,
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.tune_rounded,
                                    color: Colors.white, size: 18),
                                SizedBox(width: 8),
                                Text(
                                  'Filter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 12,
                          top: 7,
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/Ellipseyell.png',
                                  width: 80,
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

                  // ── Chip label ──
                  const SizedBox(height: 12),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDE8E8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'All Class, Semua Maskapai',
                      style: TextStyle(fontSize: 13, color: Color(0xFF1A1A1A)),
                    ),
                  ),

                  // ── Scrollable content ──
                  Flexible(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),

                          // Kelas Kabin header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Kelas Kabin',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1A1A1A),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_semuaKelasSelected) {
                                      _selectedKelas.clear();
                                    } else {
                                      _selectedKelas
                                        ..add('Economy')
                                        ..add('Business')
                                        ..add('First Class');
                                    }
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text('Semua Kelas',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: primaryRed)),
                                    const SizedBox(width: 4),
                                    Icon(Icons.bookmark_rounded,
                                        color: primaryRed, size: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          // Kelas row 1
                          Row(
                            children: [
                              _KelasButton(
                                label: 'Economy',
                                selected: _selectedKelas.contains('Economy'),
                                onTap: () => setState(() =>
                                    _selectedKelas.contains('Economy')
                                        ? _selectedKelas.remove('Economy')
                                        : _selectedKelas.add('Economy')),
                              ),
                              const SizedBox(width: 10),
                              _KelasButton(
                                label: 'Business',
                                selected: _selectedKelas.contains('Business'),
                                onTap: () => setState(() =>
                                    _selectedKelas.contains('Business')
                                        ? _selectedKelas.remove('Business')
                                        : _selectedKelas.add('Business')),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),

                          // Kelas row 2
                          Row(
                            children: [
                              _KelasButton(
                                label: 'First Class',
                                selected:
                                    _selectedKelas.contains('First Class'),
                                onTap: () => setState(() =>
                                    _selectedKelas.contains('First Class')
                                        ? _selectedKelas.remove('First Class')
                                        : _selectedKelas.add('First Class')),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Maskapai
                          const Text('Maskapai',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1A1A1A))),
                          const SizedBox(height: 10),

                          // Search
                          TextField(
                            onChanged: (v) =>
                                setState(() => _searchQuery = v),
                            decoration: InputDecoration(
                              hintText: 'Kata Kunci',
                              hintStyle: const TextStyle(
                                  fontSize: 13, color: Color(0xFFAAAAAA)),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Color(0xFFDDDDDD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: primaryRed),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Pilih Semua / Hapus Semua
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () => setState(() =>
                                        _selectedAirlines
                                            .addAll(_filteredAirlines)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color(0xFF2E7D32),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    child: const Text('Pilih Semua',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () => setState(() =>
                                        _selectedAirlines
                                            .removeAll(_filteredAirlines)),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryRed,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    child: const Text('Hapus Semua',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),

                          // Airlines list
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: _filteredAirlines.length,
                            separatorBuilder: (_, __) => const Divider(
                                height: 1, color: Color(0xFFF0F0F0)),
                            itemBuilder: (context, i) {
                              final airline = _filteredAirlines[i];
                              final selected =
                                  _selectedAirlines.contains(airline);
                              return InkWell(
                                onTap: () => setState(() => selected
                                    ? _selectedAirlines.remove(airline)
                                    : _selectedAirlines.add(airline)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(airline,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF1A1A1A))),
                                      ),
                                      Container(
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: selected
                                              ? primaryRed
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                            color: selected
                                                ? primaryRed
                                                : const Color(0xFFCCCCCC),
                                            width: 1.5,
                                          ),
                                        ),
                                        child: selected
                                            ? const Icon(Icons.check,
                                                size: 14,
                                                color: Colors.white)
                                            : null,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),

                  // ── OK Button ──
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(16, 8, 16, 16 + bottomPad),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryRed,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text('OK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        // ── FLOATING: Handle bar ──
        const Positioned(
          top: 8,
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              width: 44,
              height: 5,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFCCCCCC),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ── Kelas Kabin toggle button ──
class _KelasButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _KelasButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const primaryRed = Color(0xFFC42D27);
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFFFDE8E8) : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: primaryRed, width: 1.5),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: const TextStyle(
              color: primaryRed,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
