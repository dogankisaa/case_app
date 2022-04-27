import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/widgets/svg_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
