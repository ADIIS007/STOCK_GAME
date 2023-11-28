import 'package:flutter/material.dart';
import 'package:stock_game/pages/accounts/accounts_screen.dart';
import 'package:stock_game/pages/book_marks/book_mark_screen.dart';
import 'package:stock_game/pages/home/home_screen.dart';
import 'package:stock_game/pages/search/search_screen.dart';
import 'package:stock_game/pages/settings/settings_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 2;

  // Define your pages or views here
  final List<Widget> _pages = [
    const HomeScreen(),
    const BookMarksScreen(),
    const SearchScreen(),
    const AccountsScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Book Mark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'P&L',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
