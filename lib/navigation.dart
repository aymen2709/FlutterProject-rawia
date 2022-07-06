import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_myapp/homeScreen.dart';
import 'package:flutter_myapp/profil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'abservations.dart';
class Navigation extends StatefulWidget {

  int activePage;
  Navigation({Key? key, required this.activePage}) : super(key: key);

  @override
  State<Navigation> createState() {
    return _Navigation(this.activePage);
  }
}

class _Navigation extends State<Navigation> {
  final List _pagesList = [HomeScreen(),Abs(),Profil()];

  int activePage;
  _Navigation(this.activePage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pagesList[activePage],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home-icon.png'),
                size: 30,
              ),
              label: 'Accueil'),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/obs-icon.png'),
                size: 30,
              ),
              label: 'Observations'),
          BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.only(bottom: 2),
                child: const ImageIcon(
                  AssetImage('assets/images/admin-icon.png'),
                  size: 30,
                ),
              ),
              label: 'Administration'),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/profile-icon.png'),
                size: 30,
              ),
              label: 'Profil')
        ],
        currentIndex: activePage,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(79, 150, 247, 1),
        unselectedItemColor: const Color.fromRGBO(166, 166, 166, 1),
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
      ),
    );
  }
}
