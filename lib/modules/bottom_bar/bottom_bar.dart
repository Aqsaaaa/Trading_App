// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
import 'package:trading_app/modules/help_desk/help_desk_page.dart';
import 'package:trading_app/modules/profile/view/profile_page.dart';
import 'package:trading_app/modules/signal/view/signal_page.dart';

import '../../gen/assets.gen.dart';
import '../displayed/view/displayed_page.dart';
import '../home/view/home_page.dart';

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
    const DisplayedPage(),
    const SignalPage(),
    const HelpDeskPage(),
    const ProfilePage(),
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
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Assets.icon.home.svg(color: Colors.orange)
                : Assets.icon.home.svg(color: Colors.grey),
            label: 'Home',
            activeIcon: Assets.icon.home.svg(color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Assets.icon.displayed.svg(color: Colors.orange)
                : Assets.icon.displayed.svg(color: Colors.grey),
            label: 'All Charts',
            activeIcon: Assets.icon.displayed.svg(color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Assets.icon.signal.svg(color: Colors.orange)
                : Assets.icon.signal.svg(color: Colors.grey),
            label: 'Signal',
            activeIcon: Assets.icon.signal.svg(color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? Assets.icon.helpdesk.svg(color: Colors.orange)
                : Assets.icon.helpdesk.svg(color: Colors.grey),
            label: 'Help Desk',
            activeIcon: Assets.icon.helpdesk.svg(color: Colors.orange),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? Assets.icon.profile.svg(color: Colors.orange)
                : Assets.icon.profile.svg(color: Colors.grey),
            label: 'Profile',
            activeIcon: Assets.icon.profile.svg(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
