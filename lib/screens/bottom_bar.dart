import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:tickets/screens/home_screen.dart';
import 'package:tickets/screens/profile_screen.dart';
import 'package:tickets/screens/search_screen.dart';
import 'package:tickets/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My Tickets'),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.grey.shade600,
        unselectedItemColor: Colors.grey.shade600,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
            ),
            label: 'Home',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
            ),
            label: 'Search',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
            ),
            label: 'Ticket',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            label: 'Profile',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          ),
        ],
      ),
    );
  }
}
