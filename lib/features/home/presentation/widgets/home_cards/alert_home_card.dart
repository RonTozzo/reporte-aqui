import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/home_card.dart';

class AlertHomeCard extends StatelessWidget {
  const AlertHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeCard(
      imagePath: 'assets/images/alert.png',
      cardTitle: "Denuncia",
      cardDescription: "Escolha esse se você deseja denunciar algo",
    );
  }
}
