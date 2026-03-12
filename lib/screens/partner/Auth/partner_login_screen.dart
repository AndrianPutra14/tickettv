import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'partner_register_screen.dart';
import 'package:project1/screens/partner/homepage.dart';

const Color _kRed = Color(0xFFC42D27);

class PartnerLoginScreen extends StatefulWidget {
  const PartnerLoginScreen({super.key});

  @override
  State<PartnerLoginScreen> createState() => _PartnerLoginScreenState();
}

class _PartnerLoginScreenState extends State<PartnerLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _namaCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  bool _obscurePassword = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _namaCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
  if (!_formKey.currentState!.validate()) return;

  setState(() => _isLoading = true);

  await Future.delayed(const Duration(seconds: 2));

  if (!mounted) return;

  setState(() => _isLoading = false);

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Login berhasil! Selamat datang kembali 👋'),
      behavior: SnackBarBehavior.floating,
      backgroundColor: _kRed,
    ),
  );

  // Navigasi ke Homepage
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const HomePage(),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 5),

                        // ── Logo ───────────────────────────────────────────
                        Center(
                          child: Image.asset(
                            'assets/images/ezytix.png',
                            height: 64,
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) => const Text(
                              'Ezytix',
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.w900,
                                color: _kRed,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 50),

                        // ── Title ──────────────────────────────────────────
                        const Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: _kRed,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Center(
                          child: Text(
                            'Masuk ke akun anda',
                            style: TextStyle(
                              color: Color(0xFF888888),
                              fontSize: 13.5,
                            ),
                          ),
                        ),

                        const SizedBox(height: 32),

                        // ── Nama pengguna ──────────────────────────────────
                        const Text(
                          'Nama  pengguna',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _namaCtrl,
                          style: const TextStyle(
                              fontSize: 14, color: Color(0xFF1A1A1A)),
                          validator: (v) => v == null || v.trim().isEmpty
                              ? 'Nama pengguna wajib diisi'
                              : null,
                          decoration: _inputDecoration(
                            hint: 'Johndoe25',
                            prefixIcon: Icons.person_outline_rounded,
                          ),
                        ),

                        const SizedBox(height: 18),

                        // ── Password ───────────────────────────────────────
                        const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1A1A1A),
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _passwordCtrl,
                          obscureText: _obscurePassword,
                          style: const TextStyle(
                              fontSize: 14, color: Color(0xFF1A1A1A)),
                          validator: (v) => v == null || v.isEmpty
                              ? 'Password wajib diisi'
                              : null,
                          decoration: _inputDecoration(
                            hint: '••••••••••••••',
                            prefixIcon: Icons.person_outline_rounded,
                          ).copyWith(
                            suffixIcon: GestureDetector(
                              onTap: () => setState(
                                  () => _obscurePassword = !_obscurePassword),
                              child: Icon(
                                _obscurePassword
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xFFAAAAAA),
                                size: 20,
                              ),
                            ),
                          ),
                        ),

                        // ── Lupa Password ──────────────────────────────────
                        const SizedBox(height: 6),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Lupa Password?',
                              style: TextStyle(
                                color: _kRed,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 28),

                        // ── Tombol Masuk ───────────────────────────────────
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: _isLoading ? null : _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _kRed,
                              disabledBackgroundColor: _kRed.withOpacity(0.6),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            child: _isLoading
                                ? const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                        color: Colors.white, strokeWidth: 2.5),
                                  )
                                : const Text(
                                    'Masuk',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ── Footer ─────────────────────────────────────────
                        Center(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const PartnerRegisterScreen()),
                            ),
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontSize: 13.5, color: Color(0xFF888888)),
                                children: [
                                  TextSpan(text: 'Belum punya akun?  '),
                                  TextSpan(
                                    text: 'Daftar',
                                    style: TextStyle(
                                      color: _kRed,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  InputDecoration _inputDecoration({
    required String hint,
    required IconData prefixIcon,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
      prefixIcon: Icon(prefixIcon, color: const Color(0xFFAAAAAA), size: 20),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _kRed, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE53935), width: 1.2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFE53935), width: 1.5),
      ),
    );
  }
}
