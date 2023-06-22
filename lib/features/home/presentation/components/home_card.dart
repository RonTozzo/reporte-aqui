import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String cardTitle;
  final String cardDescription;
  final String imagePath;

  const HomeCard({
    super.key,
    required this.imagePath,
    required this.cardTitle,
    required this.cardDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 24, height: 24, fit: BoxFit.cover),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cardTitle, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 4),
                Text(cardDescription, style: const TextStyle(fontSize: 8)),
              ],
            ),
          ),
          const SizedBox(width: 32),
          const Icon(Icons.arrow_forward_ios, size: 12),
        ],
      ),
    );
  }
}
