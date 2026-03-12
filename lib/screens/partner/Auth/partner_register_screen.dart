import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/utils/routes.dart';
import 'partner_login_screen.dart';

const Color _kRed = Color(0xFFC42D27);

class PartnerRegisterScreen extends StatefulWidget {
  const PartnerRegisterScreen({super.key});

  @override
  State<PartnerRegisterScreen> createState() => _PartnerRegisterScreenState();
}

class _PartnerRegisterScreenState extends State<PartnerRegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _namaCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _teleponCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _konfirmCtrl = TextEditingController();

  String? _selectedBandara;
  bool _obscurePassword = true;
  bool _obscureKonfirm = true;
  bool _isLoading = false;

  final List<String> _bandaraList = [
    'Soekarno-Hatta (CGK) - Jakarta',
    'Ngurah Rai (DPS) - Bali',
    'Juanda (SUB) - Surabaya',
    'Kualanamu (KNO) - Medan',
    'Sultan Hasanuddin (UPG) - Makassar',
    'Adisutjipto (JOG) - Yogyakarta',
    'Ahmad Yani (SRG) - Semarang',
    'Minangkabau (PDG) - Padang',
    'Sultan Mahmud Badaruddin II (PLM) - Palembang',
    'Sultan Syarif Kasim II (PKU) - Pekanbaru',
  ];

  @override
  void dispose() {
    _namaCtrl.dispose();
    _emailCtrl.dispose();
    _teleponCtrl.dispose();
    _passwordCtrl.dispose();
    _konfirmCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    setState(() => _isLoading = false);
    _showSuccessDialog();
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.fromLTRB(24, 28, 24, 20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: const BoxDecoration(
                color: Color(0xFFFFE6E5),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check_circle_rounded,
                  color: _kRed, size: 42),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pendaftaran Berhasil!',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF1A1A1A)),
            ),
            const SizedBox(height: 8),
            const Text(
              'Selamat datang di EzyTix Partner!\nAkun kamu sudah aktif.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13, color: Color(0xFF666666), height: 1.5),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // tutup dialog
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.partnerHome,
                    (route) => false, // hapus semua stack sebelumnya
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _kRed,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Mulai Sekarang',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),

                // ── Title ────────────────────────────────────────────────
                const Center(
                  child: Text(
                    'Daftar Akun',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                const Center(
                  child: Text(
                    'Buat akun untuk memulai',
                    style: TextStyle(
                      color: Color(0xFF888888),
                      fontSize: 13.5,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ── Nama Lengkap / Agen ──────────────────────────────────
                const Text('Nama Lengkap / Agen',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
                const SizedBox(height: 8),
                _buildField(
                  controller: _namaCtrl,
                  hint: 'Masukan nama lengkap / agen',
                  prefixIcon: Icons.person_outline_rounded,
                  validator: (v) =>
                      v == null || v.trim().isEmpty ? 'Nama wajib diisi' : null,
                ),

                const SizedBox(height: 16),

                // ── Email ────────────────────────────────────────────────
                const Text('Email',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
                const SizedBox(height: 8),
                _buildField(
                  controller: _emailCtrl,
                  hint: 'Masukan Email',
                  prefixIcon: Icons.person_outline_rounded,
                  keyboardType: TextInputType.emailAddress,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty)
                      return 'Email wajib diisi';
                    if (!v.contains('@')) return 'Format email tidak valid';
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // ── No. Telp ─────────────────────────────────────────────
                const Text('No. Telp',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
                const SizedBox(height: 8),
                _buildField(
                  controller: _teleponCtrl,
                  hint: 'Masukan Nomor Telepon',
                  prefixIcon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (v) => v == null || v.trim().isEmpty
                      ? 'Nomor telepon wajib diisi'
                      : null,
                ),

                const SizedBox(height: 16),

                // ── Dropdown Bandara Terdekat ─────────────────────────────
                DropdownButtonFormField<String>(
                  value: _selectedBandara,
                  isExpanded: true,
                  hint: const Text(
                    'Bandara Terdekat',
                    style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
                  ),
                  icon: const Icon(Icons.arrow_drop_down,
                      color: Color(0xFFAAAAAA)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
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
                      borderSide: const BorderSide(
                          color: Color(0xFFE53935), width: 1.2),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          color: Color(0xFFE53935), width: 1.5),
                    ),
                  ),
                  items: _bandaraList
                      .map((b) => DropdownMenuItem(
                            value: b,
                            child: Text(b,
                                style: const TextStyle(
                                    fontSize: 13, color: Color(0xFF1A1A1A))),
                          ))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedBandara = val),
                ),

                const SizedBox(height: 16),

                // ── Kata Sandi ───────────────────────────────────────────
                const Text('Kata Sandi',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
                const SizedBox(height: 8),
                _buildPasswordField(
                  controller: _passwordCtrl,
                  hint: 'Kata Sandi',
                  obscure: _obscurePassword,
                  onToggle: () =>
                      setState(() => _obscurePassword = !_obscurePassword),
                  validator: (v) {
                    if (v == null || v.isEmpty) return 'Kata sandi wajib diisi';
                    if (v.length < 6) return 'Minimal 6 karakter';
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // ── Konfirmasi Kata Sandi ────────────────────────────────
                const Text('Konfirmasi Kata Sandi',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1A1A1A))),
                const SizedBox(height: 8),
                _buildPasswordField(
                  controller: _konfirmCtrl,
                  hint: 'Konfirmasi Kata Sandi',
                  obscure: _obscureKonfirm,
                  onToggle: () =>
                      setState(() => _obscureKonfirm = !_obscureKonfirm),
                  validator: (v) {
                    if (v == null || v.isEmpty)
                      return 'Konfirmasi kata sandi wajib diisi';
                    if (v != _passwordCtrl.text)
                      return 'Kata sandi tidak cocok';
                    return null;
                  },
                ),

                const SizedBox(height: 28),

                // ── Tombol Daftar ────────────────────────────────────────
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
                            'Daftar',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                  ),
                ),

                const SizedBox(height: 16),

                // ── Footer ───────────────────────────────────────────────
                Center(
                  child: RichText(
                    text: const TextSpan(
                      style:
                          TextStyle(fontSize: 13.5, color: Color(0xFF888888)),
                      children: [
                        TextSpan(text: 'Apakah sudah memiliki akun?  '),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Center(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const PartnerLoginScreen()),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: _kRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ── Helpers ────────────────────────────────────────────────────────────────

  Widget _buildField({
    required TextEditingController controller,
    required String hint,
    required IconData prefixIcon,
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      validator: validator,
      style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A)),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
        prefixIcon: Icon(prefixIcon, color: const Color(0xFFAAAAAA), size: 20),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String hint,
    required bool obscure,
    required VoidCallback onToggle,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      validator: validator,
      style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A)),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
        prefixIcon: const Icon(Icons.lock_outline_rounded,
            color: Color(0xFFAAAAAA), size: 20),
        suffixIcon: GestureDetector(
          onTap: onToggle,
          child: Icon(
            obscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
            color: const Color(0xFFAAAAAA),
            size: 20,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
      ),
    );
  }
}
