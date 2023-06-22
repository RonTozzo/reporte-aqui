import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/home_card.dart';

class IdeaHomeCard extends StatelessWidget {
  const IdeaHomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeCard(
      imagePath: 'assets/images/idea.png',
      cardTitle: "Sujestão",
      cardDescription: "Escolha esse se você deseja deixar uma sugestão",
    );
  }
}
