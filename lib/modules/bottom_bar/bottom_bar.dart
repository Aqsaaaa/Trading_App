import 'package:flutter/material.dart';

import '../charts/view/charts_page.dart';
import '../home/view/home_page.dart';
import '../signal/view/signal_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const ChartsPage(),
    const SignalPage(),
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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'All Charts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Displayed',
          ),
        ],
      ),
    );
  }
}
