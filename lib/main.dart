import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/onboarding/login/document_number_page.dart';
import 'package:reporte_aqui/features/onboarding/login/phone_token_page.dart';
import 'package:reporte_aqui/features/onboarding/register/phone_number_step_page.dart';
import 'package:reporte_aqui/features/onboarding/register/proof_residence_step_page.dart';
import 'package:reporte_aqui/features/onboarding/welcome/welcome_page.dart';
import 'package:reporte_aqui/shared/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reporte Aqui',
      initialRoute: AppRoutes.welcome,
      routes: {
        AppRoutes.welcome: (context) => const WelcomePage(),
        AppRoutes.documentNumber: (context) => const DocumentNumberPage(),
        AppRoutes.phoneToken: (context) => const PhoneTokenPage(),
        AppRoutes.phoneNumberStep: (context) => const PhoneNumberStepPage(),
        AppRoutes.proofResidenceStep: (context) =>
            const ProfResidenceStepPage(),
      },
    );
  }
}
