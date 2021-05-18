import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: '',
              icon: _selectedIndex == 0
                  ? SvgPicture.asset(
                      'assets/icons/Bold/Home.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'assets/icons/Light/Home.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )),
          BottomNavigationBarItem(
              label: '',
              icon: _selectedIndex == 1
                  ? SvgPicture.asset(
                      'assets/icons/Bold/Buy.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'assets/icons/Light/Buy.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )),
          BottomNavigationBarItem(
              label: '',
              icon: _selectedIndex == 2
                  ? SvgPicture.asset(
                      'assets/icons/Bold/Chat.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'assets/icons/Light/Chat.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )),
          BottomNavigationBarItem(
              label: '',
              icon: _selectedIndex == 3
                  ? SvgPicture.asset(
                      'assets/icons/Bold/Profile.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )
                  : SvgPicture.asset(
                      'assets/icons/Light/Profile.svg',
                      color: Theme.of(context).primaryColor,
                      height: 30,
                    )),
        ],
      ),
    );
  }
}
