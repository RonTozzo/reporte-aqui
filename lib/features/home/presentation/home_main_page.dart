import 'package:flutter/material.dart';
import 'package:reporte_aqui/features/home/entities/pages.dart';
import 'package:reporte_aqui/features/home/presentation/pages/chats_page_widget.dart';
import 'package:reporte_aqui/features/home/presentation/pages/home_page_widget.dart';
import 'package:reporte_aqui/features/home/presentation/pages/settings_page_widget.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/alert_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/idea_home.card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/lightning_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/streets_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/home_cards/water_home_card.dart';
import 'package:reporte_aqui/features/home/presentation/widgets/navigation_bar.dart';
import 'package:reporte_aqui/shared/presentation/app_bar.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({super.key});

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  HomePage currentPage = const HomePage.home();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      bottomNavigationBar: HomeNavigationBar(onTabChanged: onTabChanged),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: currentPage.when(
              settings: () => const SettingsPageWidget(),
              home: () => const HomePageWidget(),
              chats: () => const ChatsPageWidget(),
            ),
          ),
        ),
      ),
    );
  }

  void onTabChanged(int newIndex) {
    if (newIndex == 0) {
      currentPage = const HomePage.settings();
    }
    if (newIndex == 1) {
      currentPage = const HomePage.home();
    }
    if (newIndex == 2) {
      currentPage = const HomePage.chats();
    }

    setState(() {});
  }
}
