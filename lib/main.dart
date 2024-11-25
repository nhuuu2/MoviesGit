import 'package:chat_app/screen/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(child: MyWidget()),

        ),
      ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
                Image.asset(
                  'assets/Screenshot 2024-11-18 085853.png',
                  height: 150,
                ),
                const SizedBox(height: 20),
                RichText(text: const TextSpan(
                  children: <TextSpan> [
                    TextSpan(text: 'TRAIN',style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w900,
                        color: Colors.red, fontFamily: 'HighlandGothicFLF')),
                    TextSpan(text: 'LOGO',style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.w900,
                        color: Colors.blue, fontFamily: 'HighlandGothicFLF'))
                  ]
                ),
                ),
                 const SizedBox(height: 10),
                const Padding(padding: EdgeInsets.fromLTRB(1, 1, 1, 1),
                child: Center(
                  child: Text('The Philippine MRT LRT Scheduler Mobile App (PMLS) is'
                      'designed to assist sleepy train station passengers in managing their journeys',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15, color: Colors.black38
                    ),
                  ),
                ),
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Screen1()),
                      );
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                ),
                    child: const Text('Login',style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){

                },
                    style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFFFCC33),
                        backgroundColor: const Color(0xFFFFEFD5),
                      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),

                ),
                    child: const Text('Register',style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                    )),

              ],
            ),
          )),
    );

  }

  const MyWidget({super.key});
}


