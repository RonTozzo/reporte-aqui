import 'package:flutter/material.dart';

class ChatsCard extends StatelessWidget {
  final String hostName;
  final String lastMessage;
  final bool hasUnreadMessages;

  const ChatsCard({
    super.key,
    required this.hostName,
    required this.lastMessage,
    required this.hasUnreadMessages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          messageIcon(),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hostName, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 4),
                Text(
                  "$hostName: $lastMessage",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Icon messageIcon() {
    if (hasUnreadMessages) {
      return const Icon(
        Icons.notifications_active,
        color: Colors.red,
        size: 24,
      );
    } else {
      return const Icon(
        Icons.notifications_none_outlined,
        color: Colors.grey,
        size: 24,
      );
    }
  }
}
