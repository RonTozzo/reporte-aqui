import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/home_card.dart';

class WaterHomeCard extends StatelessWidget {
  const WaterHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeCard(
      imagePath: 'assets/images/water-tap.png',
      cardTitle: "Água",
      cardDescription:
          "Escolha esse se você deseja reportar problemas com o fornecimento de água",
    );
  }
}
