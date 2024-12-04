import 'package:flutter/material.dart';
class CustomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color(0xFF0F111D),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.redAccent,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushNamed(context, 'scr');
          } else if (index == 2) {
            Navigator.pushNamed(context, 'scr3');
          } else if (index == 0) {
            Navigator.pushNamed(context, '/');
          }
        },
        items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,),
            label: ''

        ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.play_circle_fill,
            size: 35,
            color: Colors.white,),
          label: ''

      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
          ),
          label: ''

      ),]);

  }
}