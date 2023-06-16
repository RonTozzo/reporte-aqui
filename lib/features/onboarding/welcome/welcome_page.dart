import 'package:flutter/material.dart';
import 'package:reporte_aqui/shared/app_routes.dart';
import 'package:reporte_aqui/shared/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset('assets/images/help_cidadadao_logo.webp'),
            const Spacer(),
            AppButton(
              label: "Começar",
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.documentNumber);
              },
            ),
            const SizedBox(height: 64)
          ],
        ),
      ),
    );
  }
}
