import 'package:chat_app/color.dart';
import 'package:chat_app/screen/document_section.dart';
import 'package:chat_app/screen/movies_section.dart';
import 'package:chat_app/screen/sports_section.dart';
import 'package:chat_app/screen/tv_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/movie.dart';

class Screen2 extends StatefulWidget {
  const Screen2({
    super.key,
    });


  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int _selectedSection = 0;
  final List<Widget> _contentWidgets = [
    MoviesSection(),
    TvSection(),
    DocumentSection(),
    SportsSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Find Movies, TV series, and more...',style:
              TextStyle(
                color: whitetext,
                fontSize: 24
              ),),),
            const SizedBox(height: 10),
            Padding(padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C3C),
                borderRadius: BorderRadius.circular(16.0)
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white60,),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white60),
                  border: InputBorder.none
                ),
                style: TextStyle(color: whitetext),
              ),
            ),),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSectionButton('Movies',0),
                  _buildSectionButton('TV Series', 1),
                  _buildSectionButton('Documentary', 2),
                  _buildSectionButton('Sports', 3),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _contentWidgets[_selectedSection],
          ],
        ),
      ),
    );
  }
  Widget _buildSectionButton(String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSection = index;
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: _selectedSection == index ? Colors.orange : Colors.grey.shade800,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedSection == index ? Colors.black : Colors.white,
            fontSize: 16
          ),
        ),),
      ),
    );
  }
}
