import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final String label;
  const SettingsCard({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 12))),
          const Icon(Icons.arrow_forward_ios, size: 12),
        ],
      ),
    );
  }
}
