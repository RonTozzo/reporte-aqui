import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/components/chats_card.dart';

class SecondMessageMock extends StatelessWidget {
  const SecondMessageMock({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatsCard(
      hasUnreadMessages: false,
      hostName: "Nicolas Bassoli",
      lastMessage: "Obrigado pela sua colaboração!",
    );
  }
}
