import 'package:chat_app/screen/homescreen.dart';
import 'package:chat_app/screen/screen2.dart';
import 'package:chat_app/screen/screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // to hide status bar and bellow button
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D)
      ),
      routes: {
        '/': (context) => homeScreen(),
        'scr': (context) => Screen2(),
        'scr3': (context) => Screen3(),
      },
    );
  }
}
/*
void main() {
  runApp( MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}
*/
