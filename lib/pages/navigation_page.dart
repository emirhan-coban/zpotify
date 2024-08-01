import 'package:flutter/material.dart';
import 'package:zpotify/pages/home_page.dart';
import 'package:zpotify/pages/library_page.dart';
import 'package:zpotify/pages/search_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        onTap: _onItemTapped,
        enableFeedback: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        selectedItemColor: Theme.of(context).colorScheme.onSecondary,
        unselectedItemColor: Theme.of(context).colorScheme.onPrimary,
        currentIndex: _selectedIndex,
        selectedFontSize: 15,
        unselectedFontSize: 14,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Proxima',
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Proxima',
          fontWeight: FontWeight.bold,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? const HomePage()
          : _selectedIndex == 1
              ? const SearchPage()
              : const LibraryPage(),
    );
  }
}
