import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/alert_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/idea_home.card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/lightning_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/streets_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/water_home_card.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Passo Fundo, RS",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Text(
          "Cláudia dos Santos Silva",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 48),
        const StreetsHomeCard(),
        const SizedBox(height: 12),
        const LightningHomeCard(),
        const SizedBox(height: 12),
        const WaterHomeCard(),
        const SizedBox(height: 12),
        const AlertHomeCard(),
        const SizedBox(height: 12),
        const IdeaHomeCard(),
      ],
    );
  }
}
