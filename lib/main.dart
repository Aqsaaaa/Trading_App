import 'package:flutter/material.dart';
import 'package:trading_app/modules/landing_page/landing_page.dart';

import 'modules/landing_page/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LandingPage(),
      routes: {
        Onbording.tag: (context) => const Onbording(),
        // other routes
      },
    );
  }
}
