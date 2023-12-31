import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_app/modules/landing_page/landing_page.dart';
import 'package:trading_app/modules/profile/view/my_charts_list_page.dart';
import 'package:trading_app/modules/profile/view/setting_charts_page.dart';
import 'package:trading_app/modules/profile/view/summary_data_page.dart';
import 'package:trading_app/modules/profile/view/verification_page.dart';
import 'package:trading_app/modules/wallet/view/instruction/bri_page.dart';
import 'package:trading_app/modules/withdraw/withdraw_page.dart';

import 'modules/bottom_bar/bottom_bar.dart';
import 'modules/landing_page/onboarding.dart';
import 'modules/login/view/login_page.dart';
import 'modules/profile/view/add_charts_page.dart';
import 'modules/profile/view/change_password_page.dart';
import 'modules/profile/view/form_edit_account_page.dart';
import 'modules/profile/view/my_account_page.dart';
import 'modules/profile/view/profile_page.dart';
import 'modules/register/view/register_page.dart';
import 'modules/register/view/verify_page.dart';
import 'modules/wallet/view/deposit_page.dart';
import 'modules/wallet/view/history_transaction_page.dart';
import 'modules/wallet/view/wallet_page.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const Onbording(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/Register',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/Verify',
      builder: (context, state) => VerifyPage(),
    ),
    GoRoute(
      path: '/Bottombar',
      builder: (context, state) => const BottomBar(),
    ),
    GoRoute(
      path: '/Wallet',
      builder: (context, state) => const WalletPage(),
    ),
    GoRoute(
      path: '/Deposit',
      builder: (context, state) => const DepositPage(),
    ),
    GoRoute(
      path: '/Bri',
      builder: (context, state) => const BriPage(),
    ),
    GoRoute(
      path: '/History',
      builder: (context, state) => const HistoryTransactionPage(),
    ),
    GoRoute(
      path: '/Profile',
      builder: (context, state) => const ProfilePage(),
    ),
    GoRoute(
      path: '/FormMyAccount',
      builder: (context, state) => const FormMyAccountPage(),
    ),
    GoRoute(
      path: '/MyAccount',
      builder: (context, state) => const MyAccountPage(),
    ),
    GoRoute(
      path: '/ChangePassword',
      builder: (context, state) => const ChangePasswordPage(),
    ),
    GoRoute(
      path: '/MyChartsList',
      builder: (context, state) => const MyChartsListPage(),
    ),
    GoRoute(
      path: '/AddMyCharts',
      builder: (context, state) => const AddChartsPage(),
    ),
    GoRoute(
      path: '/SettingCharts',
      builder: (context, state) => const SettingChartsPage(),
    ),
    GoRoute(
      path: '/SummaryData',
      builder: (context, state) => const SummaryDataPage(),
    ),
    GoRoute(
      path: '/Verification',
      builder: (context, state) => const VerificationPage(),
    ),
    GoRoute(
      path: '/AddBank',
      builder: (context, state) => const AddBankPage(),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      // theme: ThemeData(
      //   textTheme: GoogleFonts.poppinsTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
    );
  }
}
