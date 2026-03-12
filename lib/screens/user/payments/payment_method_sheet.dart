import 'package:flutter/material.dart';
import 'virtual_account_sheet.dart';
import 'auto_transfer_sheet.dart';

const Color _kRed = Color(0xFFC42D27);

class PaymentMethodSheet {
  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _PaymentMethodContent(),
    );
  }
}

class _PaymentMethodContent extends StatelessWidget {
  const _PaymentMethodContent();

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Header ──────────────────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
            child: Row(
              children: [
                const Icon(Icons.wallet_rounded,
                    size: 24, color: Color(0xFF1A1A1A)),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Metode Pembayaran',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                // Tombol close — sama dengan kwitansi (Ellipseyell)
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SizedBox(
                    width: 46,
                    height: 45,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Ellipseyell.png',
                          width: 55,
                          height: 55,
                          fit: BoxFit.contain,
                          errorBuilder: (_, __, ___) => Container(
                            width: 36,
                            height: 36,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const Icon(Icons.close,
                            size: 26, color: Color(0xFF0F0F0F)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Color(0xFFE0E0E0)),

          // ── Body dengan watermark ────────────────────────────────────────────
          Stack(
            children: [
              // Watermark lingkaran merah (identik kwitansi)
              Positioned(
                left: -120,
                top: -30,
                child: Container(
                  width: 450,
                  height: 450,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _kRed.withOpacity(0.12),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(1, 24, 1, bottomPad + 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── Row 1: Credit Card & Auto Transfer ──────────────────
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _PaymentOption(
                          icon: Icons.credit_card_rounded,
                          label: 'Credit Card',
                          onTap: () => Navigator.pop(context),
                        ),
                        _PaymentOption(
                          icon: Icons.phone_android_rounded,
                          label: 'Auto Transfer',
                          onTap: () {
                            Navigator.pop(context);
                            AutoTransferSheet.show(context);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // ── Row 2: Virtual Account, Payment Link, Auto Ticket ────
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _PaymentOption(
                          icon: Icons.account_balance_rounded,
                          label: 'Virtual Account',
                          onTap: () {
                            Navigator.pop(context);
                            VirtualAccountSheet.show(context);
                          },
                        ),
                        Transform.translate(
                          offset: const Offset(-6, 0),
                          child: _PaymentOption(
                            icon: Icons.link_rounded,
                            label: 'Payment Link',
                            onTap: () => Navigator.pop(context),
                          ),
                        ),
                        _PaymentOption(
                          icon: Icons.confirmation_number_rounded,
                          label: 'Auto Ticket',
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PaymentOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _PaymentOption({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: _kRed,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(1),
                  blurRadius: 3,
                  spreadRadius: -1,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Icon(icon, size: 40, color: Colors.white),
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
}
