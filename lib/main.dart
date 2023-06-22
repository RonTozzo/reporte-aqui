import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/home_main_page.dart';
import 'package:reporte_aqui/features/onboarding/presentation/login/document_number_page.dart';
import 'package:reporte_aqui/features/onboarding/presentation/login/phone_token_page.dart';
import 'package:reporte_aqui/features/onboarding/presentation/register/phone_number_step_page.dart';
import 'package:reporte_aqui/features/onboarding/presentation/register/proof_residence_step_page.dart';
import 'package:reporte_aqui/features/onboarding/presentation/welcome/welcome_page.dart';
import 'package:reporte_aqui/shared/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reporte Aqui',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcome,
      routes: {
        AppRoutes.welcome: (context) => const WelcomePage(),
        AppRoutes.home: (context) => const HomeMainPage(),
        AppRoutes.documentNumber: (context) => const DocumentNumberPage(),
        AppRoutes.phoneToken: (context) => const PhoneTokenPage(),
        AppRoutes.phoneNumberStep: (context) => const PhoneNumberStepPage(),
        AppRoutes.proofResidenceStep: (context) =>
            const ProfResidenceStepPage(),
      },
    );
  }
}
