import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/home_card.dart';

class StreetsHomeCard extends StatelessWidget {
  const StreetsHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeCard(
      imagePath: 'assets/images/streets.png',
      cardTitle: "Ruas",
      cardDescription:
          "Escolha esse se você deseja reportar problemas relacionados a asfalto, iluminação das ruas ou sinalização",
    );
  }
}
