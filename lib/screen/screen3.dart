import 'package:chat_app/screen/screen2.dart';
import 'package:chat_app/widgets/CustomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screen/homescreen.dart';
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
