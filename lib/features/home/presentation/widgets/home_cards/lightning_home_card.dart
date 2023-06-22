import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/home_card.dart';

class LightningHomeCard extends StatelessWidget {
  const LightningHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeCard(
      imagePath: 'assets/images/spotlight.png',
      cardTitle: "Iluminação",
      cardDescription:
          "Escolha esse se você deseja reportar problemas relacionados a iluminação ou provedor de luz",
    );
  }
}
