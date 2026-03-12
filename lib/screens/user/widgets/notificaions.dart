import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color primaryRed = Color(0xFFC42D27);

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _selectedFilter = 0;
  final List<String> _filters = ['Semua', 'Belum Dibaca', 'Tiket', 'Promo'];

  final List<_NotifItem> _notifications = [
    _NotifItem(
      type: NotifType.ticketConfirmed,
      title: 'Pemesanan Berhasil!',
      message: 'Tiket Jakarta (CGK) → Denpasar (DPS) telah dikonfirmasi. '
          'Penerbangan pada Senin, 10 Mar 2026 pukul 08.00 WIB.',
      time: '2 menit lalu',
      isRead: false,
      orderCode: 'EZY-20260310-001',
      route: 'CGK → DPS',
      date: 'Sen, 10 Mar 2026',
    ),
    _NotifItem(
      type: NotifType.ticketPending,
      title: 'Menunggu Pembayaran',
      message:
          'Segera selesaikan pembayaran tiket Surabaya (SUB) → Jakarta (CGK) '
          'sebelum Sel, 4 Mar 2026 pukul 23.59 WIB.',
      time: '1 jam lalu',
      isRead: false,
      orderCode: 'EZY-20260304-002',
      route: 'SUB → CGK',
      date: 'Sel, 4 Mar 2026',
    ),
    _NotifItem(
      type: NotifType.promo,
      title: 'Promo Spesial Untukmu!',
      message:
          'Diskon 30% untuk penerbangan domestik pilihan hari ini. Gunakan kode EZYTIX30.',
      time: '3 jam lalu',
      isRead: false,
      orderCode: null,
      route: null,
      date: null,
    ),
    _NotifItem(
      type: NotifType.ticketCancelled,
      title: 'Tiket Dibatalkan',
      message: 'Pemesanan tiket Bandung (BDO) → Medan (KNO) telah dibatalkan. '
          'Refund akan diproses dalam 3-7 hari kerja.',
      time: 'Kemarin',
      isRead: true,
      orderCode: 'EZY-20260228-003',
      route: 'BDO → KNO',
      date: 'Jum, 28 Feb 2026',
    ),
    _NotifItem(
      type: NotifType.ticketCheckin,
      title: 'Check-in Dibuka!',
      message:
          'Check-in online untuk penerbangan Jakarta (CGK) → Surabaya (SUB) '
          'sudah dibuka. Lakukan check-in sekarang.',
      time: '2 hari lalu',
      isRead: true,
      orderCode: 'EZY-20260226-004',
      route: 'CGK → SUB',
      date: 'Rab, 26 Feb 2026',
    ),
    _NotifItem(
      type: NotifType.promo,
      title: 'Flash Sale 24 Jam',
      message:
          'Tiket ke Bali mulai Rp 299.000! Penawaran terbatas, pesan sekarang sebelum kehabisan.',
      time: '3 hari lalu',
      isRead: true,
      orderCode: null,
      route: null,
      date: null,
    ),
    _NotifItem(
      type: NotifType.ticketConfirmed,
      title: 'Pemesanan Berhasil!',
      message:
          'Tiket Semarang (SRG) → Jakarta (CGK) telah dikonfirmasi. Penerbangan pada Sab, 22 Feb 2026.',
      time: '5 hari lalu',
      isRead: true,
      orderCode: 'EZY-20260222-005',
      route: 'SRG → CGK',
      date: 'Sab, 22 Feb 2026',
    ),
  ];

  List<_NotifItem> get _filteredNotifs {
    switch (_selectedFilter) {
      case 1:
        return _notifications.where((n) => !n.isRead).toList();
      case 2:
        return _notifications.where((n) => n.type != NotifType.promo).toList();
      case 3:
        return _notifications.where((n) => n.type == NotifType.promo).toList();
      default:
        return _notifications;
    }
  }

  int get _unreadCount => _notifications.where((n) => !n.isRead).length;

  void _markAllRead() {
    setState(() {
      for (final n in _notifications) {
        n.isRead = true;
      }
    });
  }

  void _markRead(_NotifItem item) {
    setState(() => item.isRead = true);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    final topPad = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          // ── Headerr ──────────────────────────────────────────────────────
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: primaryRed,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            padding: EdgeInsets.fromLTRB(20, topPad + 16, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: Colors.white, size: 18),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'Notifikasi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    if (_unreadCount > 0)
                      GestureDetector(
                        onTap: _markAllRead,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'Tandai semua dibaca',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                if (_unreadCount > 0) ...[
                  const SizedBox(height: 12),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$_unreadCount notifikasi belum dibaca',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),

          // ── Filter Chips ─────────────────────────────────────────────────
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(_filters.length, (i) {
                  final selected = _selectedFilter == i;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () => setState(() => _selectedFilter = i),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: selected ? primaryRed : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          _filters[i],
                          style: TextStyle(
                            color: selected
                                ? Colors.white
                                : const Color(0xFF555555),
                            fontSize: 13,
                            fontWeight:
                                selected ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),

          // ── Notification List ─────────────────────────────────────────────
          Expanded(
            child: _filteredNotifs.isEmpty
                ? _buildEmpty()
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
                    itemCount: _filteredNotifs.length,
                    itemBuilder: (context, i) {
                      return _NotifCard(
                        item: _filteredNotifs[i],
                        onTap: () => _markRead(_filteredNotifs[i]),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.notifications_off_outlined,
              size: 64, color: Colors.grey.shade300),
          const SizedBox(height: 16),
          Text(
            'Tidak ada notifikasi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Notifikasi pemesanan tiket akan\nmuncul di sini',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Notification Card ────────────────────────────────────────────────────────

class _NotifCard extends StatelessWidget {
  final _NotifItem item;
  final VoidCallback onTap;

  const _NotifCard({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: item.isRead ? Colors.white : const Color(0xFFFFF5F5),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: item.isRead
                ? const Color(0xFFEEEEEE)
                : primaryRed.withOpacity(0.2),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Icon ──
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: _iconBg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(_iconData, color: _iconColor, size: 22),
              ),
              const SizedBox(width: 12),

              // ── Content ──
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: item.isRead
                                  ? FontWeight.w500
                                  : FontWeight.w700,
                              color: const Color(0xFF1A1A1A),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          item.time,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFFAAAAAA),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.message,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF777777),
                        height: 1.5,
                      ),
                    ),

                    // ── Tiket Info ──
                    if (item.orderCode != null) ...[
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.confirmation_number_outlined,
                                size: 14, color: Color(0xFF888888)),
                            const SizedBox(width: 6),
                            Text(
                              item.orderCode!,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF555555),
                                letterSpacing: 0.3,
                              ),
                            ),
                            if (item.route != null) ...[
                              const SizedBox(width: 8),
                              Container(
                                width: 1,
                                height: 12,
                                color: const Color(0xFFDDDDDD),
                              ),
                              const SizedBox(width: 8),
                              const Icon(Icons.flight_rounded,
                                  size: 13, color: Color(0xFF888888)),
                              const SizedBox(width: 4),
                              Text(
                                item.route!,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF555555),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // ── Unread dot ──
              if (!item.isRead) ...[
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: primaryRed,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Color get _iconBg {
    switch (item.type) {
      case NotifType.ticketConfirmed:
        return const Color(0xFFE8F5E9);
      case NotifType.ticketPending:
        return const Color(0xFFFFF3E0);
      case NotifType.ticketCancelled:
        return const Color(0xFFFFEBEE);
      case NotifType.ticketCheckin:
        return const Color(0xFFE3F2FD);
      case NotifType.promo:
        return const Color(0xFFF3E5F5);
    }
  }

  Color get _iconColor {
    switch (item.type) {
      case NotifType.ticketConfirmed:
        return const Color(0xFF2E7D32);
      case NotifType.ticketPending:
        return const Color(0xFFE65100);
      case NotifType.ticketCancelled:
        return primaryRed;
      case NotifType.ticketCheckin:
        return const Color(0xFF1565C0);
      case NotifType.promo:
        return const Color(0xFF6A1B9A);
    }
  }

  IconData get _iconData {
    switch (item.type) {
      case NotifType.ticketConfirmed:
        return Icons.check_circle_rounded;
      case NotifType.ticketPending:
        return Icons.access_time_rounded;
      case NotifType.ticketCancelled:
        return Icons.cancel_rounded;
      case NotifType.ticketCheckin:
        return Icons.flight_takeoff_rounded;
      case NotifType.promo:
        return Icons.local_offer_rounded;
    }
  }
}

// ─── Model ───────────────────────────────────────────────────────────────────

enum NotifType {
  ticketConfirmed,
  ticketPending,
  ticketCancelled,
  ticketCheckin,
  promo,
}

class _NotifItem {
  final NotifType type;
  final String title;
  final String message;
  final String time;
  bool isRead;
  final String? orderCode;
  final String? route;
  final String? date;

  _NotifItem({
    required this.type,
    required this.title,
    required this.message,
    required this.time,
    required this.isRead,
    required this.orderCode,
    required this.route,
    required this.date,
  });
}
