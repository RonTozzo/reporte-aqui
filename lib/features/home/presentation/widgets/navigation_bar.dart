import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomeNavigationBar extends StatefulWidget {
  final void Function(int) onTabChanged;

  const HomeNavigationBar({
    super.key,
    required this.onTabChanged,
  });

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      currentIndex: currentIndex,
      snakeViewColor: Colors.yellow[700],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
      backgroundColor: Colors.grey[100],
      elevation: 2,
      onTap: onTabChanged,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_sharp),
        ),
      ],
    );
  }

  void onTabChanged(int newIndex) {
    currentIndex = newIndex;
    widget.onTabChanged(newIndex);
  }
}
