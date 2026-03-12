import 'package:flutter/material.dart';
import 'package:project1/screens/user/payments/auto_transfer_sheet.dart';
import 'package:project1/screens/user/payments/virtual_account_sheet.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            // heightt: 450,
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                SizedBox(
                  // height: 450,
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
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        margin: const EdgeInsets.only(top: 55),
                        // height: 150,
                        // color: Colors.white,
                        child: Padding(
                          padding:
                              EdgeInsets.fromLTRB(1, 24, 1, bottomPad + 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // ── Row 1: Credit Card & Auto Transfer ──────────────────
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 15, 25, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
