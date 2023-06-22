import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/chats_card.dart';

class FirstMessageMock extends StatelessWidget {
  const FirstMessageMock({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatsCard(
      hasUnreadMessages: true,
      hostName: "Cláudio Walker",
      lastMessage: "Vou validar seus dados e entro em contato",
    );
  }
}
