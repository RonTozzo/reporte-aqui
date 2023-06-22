import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/chats_cards/first_message_mock.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/chats_cards/second_message_mock.dart';

class ChatsPageWidget extends StatelessWidget {
  const ChatsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Conversas ativas",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        Text(
          "Aqui você pode consultar e dar continuade as suas conversas",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 28),
        const FirstMessageMock(),
        const SizedBox(height: 12),
        const SecondMessageMock(),
      ],
    );
  }
}
