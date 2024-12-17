import 'package:chat_app/color.dart';
import 'package:chat_app/screen/home_screen.dart';
import 'package:chat_app/screen/screen2.dart';
import 'package:flutter/material.dart';



class Nav extends StatefulWidget {
  const Nav({super.key});


  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex =0;
  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Screen2(),
    Text('[ahfoa]'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const<BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 35),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_filled_rounded, size: 35,),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 35,),
                label: ''),
          ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        backgroundColor: background,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
