import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addCard.dart';
import 'package:flutter_application_1/screens/mainScreen.dart';
import 'package:flutter_application_1/screens/mapPage.dart';
import 'package:flutter_application_1/screens/profilePage.dart';
import 'package:provider/provider.dart';

import 'internetConnectionChecker.dart';

class appbar extends StatefulWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  int _currentIndex = 0;
  final screens = [
    mainScreen(),
    mapView(),
    cardAdd(),
    profileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    void initState() {
      // TODO: implement initState
      super.initState();
      Provider.of<internetConnectionChecker>(context, listen: false)
          .initialization();
    }

    return Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: MediaQuery.of(context).size.height / 40,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(0, 245, 0, 0),
          elevation: 0,
          selectedItemColor: Colors.blue,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_card_outlined),
              label: 'Add Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
