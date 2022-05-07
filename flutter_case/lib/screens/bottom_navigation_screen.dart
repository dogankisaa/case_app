import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/screens/home_screen.dart';
import 'package:flutter_case/screens/player_screen.dart';
import 'package:flutter_case/service/dio_get_player_data.dart';
import 'package:flutter_case/widgets/svg_widget.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../widgets/bottom_navigation_widget.dart';
import '../widgets/post_widget.dart';
import '../widgets/text_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}
  int _selectedIndex = 0;
class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
     const List<Widget> _pages = <Widget>[
 HomeScreen(),
 PlayerScreen(),
  Icon(
    Icons.camera,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: bottomNavigationUnSelectedColor,
      backgroundColor: bottomNavigationColor,
      selectedItemColor: Theme.of(context).primaryColor,
      selectedIconTheme: IconThemeData(
        color: Theme.of(context).primaryColor
      ),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgWidget(
            text: bottomNavigationHomeIconText,
            color: _selectedIndex != 0
                ? bottomNavigationUnSelectedColor
                : Theme.of(context).primaryColor,
          ),
          label: 'Home',
          backgroundColor: bottomNavigationColor,
        ),
        BottomNavigationBarItem(
          icon: SvgWidget(
            text: bottomNavigationSearchIconText,
            color: _selectedIndex != 1
                ? bottomNavigationUnSelectedColor
                : Theme.of(context).primaryColor,
          ),
          label: 'Search',
          backgroundColor: bottomNavigationColor,
        ),
        BottomNavigationBarItem(
          icon: SvgWidget(
            text: bottomNavigationLiveIconText,
            color: _selectedIndex != 2
                ? bottomNavigationUnSelectedColor
                : Theme.of(context).primaryColor,
          ),
          label: 'Live',
          backgroundColor: bottomNavigationColor,
        ),
        BottomNavigationBarItem(
          icon: SvgWidget(
            text: bottomNavigationProfileIconText,
            color: _selectedIndex != 3
                ? bottomNavigationUnSelectedColor
                : Theme.of(context).primaryColor,
          ),
          label: 'Profile',
          backgroundColor: bottomNavigationColor,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    ),
     
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
    );
  }
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

