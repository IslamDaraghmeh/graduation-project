import 'package:flutter/material.dart';
import '/l10n/s.dart';
import 'package:skin_care_graduation_project/screens/home/categories_screen.dart';
import 'package:skin_care_graduation_project/screens/profile/profile_screen.dart';

import 'home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeTab(),
    CategoriesTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: t.home,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category_outlined),
            label: t.categories,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            label: t.profile,
          ),
        ],
      ),
    );
  }
}
