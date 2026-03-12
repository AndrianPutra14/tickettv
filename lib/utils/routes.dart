import 'package:flutter/material.dart';
import 'package:project1/screens/onboarding.dart';
import 'package:project1/screens/welcome_screen.dart';
// ── User screens ──────────────────────────────────────────────────────────────
import 'package:project1/screens/user/homepage.dart';
import 'package:project1/screens/user/flight_results_page.dart';
import 'package:project1/screens/user/informasi_pemesanan_screen.dart';
import 'package:project1/screens/user/booking_detail_screen.dart';
import 'package:project1/screens/user/mybookng.dart';
import 'package:project1/screens/user/partner.dart';
import 'package:project1/screens/user/model/flight_models.dart';
// ── Partner screens ───────────────────────────────────────────────────────────
import 'package:project1/screens/partner/homepage.dart' as ph;
import 'package:project1/screens/partner/partner_flight_result_screen.dart' as pf;
import 'package:project1/screens/partner/Auth/partner_login_screen.dart';
import 'package:project1/screens/partner/Auth/partner_register_screen.dart';

class AppRoutes {
  // ── User route names ────────────────────────────────────────────────────────
  static const String onboarding        = '/';
  static const String welcome           = '/welcome';
  static const String home              = '/home';
  static const String flightResults     = '/flight-results';
  static const String informasiPemesanan = '/informasi-pemesanan';
  static const String bookingDetail     = '/booking-detail';
  static const String myBooking         = '/my-booking';
  static const String partner           = '/partner';

  // ── Partner route names ─────────────────────────────────────────────────────
  static const String partnerHome          = '/partner-home';
  static const String partnerFlightResults = '/partner-flight-results';
  static const String partnerLogin         = '/partner-login';
  static const String partnerRegister      = '/partner-register';

  // ── Route map ───────────────────────────────────────────────────────────────
  static Map<String, WidgetBuilder> get routes => {
        // User
        onboarding: (context) => const OnboardingScreen(),
        welcome:    (context) => const WelcomeScreen(),
        home:       (context) => const HomePage(),
        flightResults: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return FlightResultsPage(
            from:     args['from']     as String,
            to:       args['to']       as String,
            paxLabel: args['paxLabel'] as String,
          );
        },
        informasiPemesanan: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return InformasiPemesananScreen(
            fare:   args['fare']   as FareModel,
            flight: args['flight'] as FlightModel,
          );
        },
        bookingDetail: (context) => const BookingDetailScreen(),
        myBooking:     (context) => const MyBookingPage(),
        partner:       (context) => const PartnerPage(),

        // Partner
        partnerHome:     (context) => const ph.HomePage(),
        partnerLogin:    (context) => const PartnerLoginScreen(),
        partnerRegister: (context) => const PartnerRegisterScreen(),
        partnerFlightResults: (context) {
          final args = ModalRoute.of(context)?.settings.arguments
              as Map<String, dynamic>?;
          return pf.FlightResultsPage(
            from:     args?['from']     as String? ?? 'Jakarta (CGK)',
            to:       args?['to']       as String? ?? 'Surabaya (SUB)',
            paxLabel: args?['paxLabel'] as String? ?? 'All Class . 1 Penumpang',
          );
        },
      };
}
