import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/screens/cart_page.dart';
import 'package:food_app_ui/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;
  static List<Widget> _screenOptions = <Widget>[
    HomePage(),
    CartPage(),
    Text('1'),
    Column(
      children: [
        Text('Code By Muhammad Rezky Sulihin'),
        Text('Design By Rizki Indra on Dribbble'),
      ],
    )
  ];

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 28, offset: Offset(0, 0.7))],
          color: Colors.grey,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedTab,
          onTap: _onBottomNavBarTapped,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: '',
                icon: _selectedTab == 0
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
                icon: _selectedTab == 1
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
                icon: _selectedTab == 2
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
                icon: _selectedTab == 3
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
      ),

      // AppBar
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: SvgPicture.asset('assets/icons/Light/Menu.svg'), onPressed: () {}),
          Text(
            'Restaurant App',
            style: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          IconButton(
              icon: SvgPicture.asset(
                'assets/icons/Light/Notification.svg',
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      )),

      // app
      body: _screenOptions.elementAt(_selectedTab),
    );
  }
}
