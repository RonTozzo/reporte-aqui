import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/settings_card.dart';

class SettingsPageWidget extends StatefulWidget {
  const SettingsPageWidget({super.key});

  @override
  State<SettingsPageWidget> createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Configurações",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Text(
          "Aqui você pode editar suas informações",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 28),
        const SettingsCard(label: "Altere seu nome acessando aqui"),
        const SizedBox(height: 12),
        const SettingsCard(label: "Altere sua cidade acessando aqui"),
        const SizedBox(height: 12),
        const SettingsCard(label: "Altere seu número acessando aqui"),
        const SizedBox(height: 12),
        const SettingsCard(label: "Altere seu e-mail acessando aqui"),
      ],
    );
  }
}
