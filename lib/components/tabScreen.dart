import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/four.dart';
import '../screens/one.dart';
import '../screens/three.dart';
import '../screens/two.dart';

class TabsScreen extends StatefulWidget {
  // static String routeName = "/";
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': PageOne(),
        'title': 'Home',
      },
      {
        'page': PageTwo(),
        'title': 'Orders',
      },
      {
        'page': PageThree(),
        'title': 'Account',
      },
      {
        'page': PageFour(),
        'title': 'Help',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      body: (_pages[_selectedPageIndex]['page'] as Widget),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: veyronColorWhite,
        unselectedItemColor: veyronColorPrimary,
        selectedItemColor: veyronColorPrimary,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.home),
             title: Text('Home'),
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.inventory_outlined),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            backgroundColor: veyronColorWhite,
            icon: Icon(Icons.help),
            title: Text('Help'),
          ),
        ],
      ),
    );
  }
}
