import 'package:chat_app/screen/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [ Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage('assets/Screenshot 2024-11-27 200921.png'),
                        fit: BoxFit.cover)
                ),
              ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Hot', style: TextStyle(
                            fontFamily: 'Puling'
                        ),)),
                    const SizedBox(width: 5),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Ducky',style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),
                    const SizedBox(width: 5),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Cute', style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),
                    const SizedBox(width: 5),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Healing', style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    TextButton(onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Girly', style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),
                    const SizedBox(width: 5),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Diary', style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),
                    const SizedBox(width: 5),
                    TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            foregroundColor: Color(0xFFF36C6C),
                            backgroundColor: Color(0xFFFDF8BA),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                        child: const Text('Winter', style: TextStyle(
                            fontFamily: 'Puling', fontSize: 14
                        ),)),

                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 170.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFACDCB7), width: 3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [

                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color:  Color(0xFFACDCB7), width: 3
                              )
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/Screenshot 2024-11-27 213108.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          color: const Color(0xFFE6FDDB),
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                          child: Row(
                            children: [
                              const Text('Gentle Grid Note',
                                style:
                                TextStyle(fontFamily: 'Puling',color: Colors.black,fontSize: 16),),
                              const SizedBox(width: 100.0),
                              TextButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()));
                              },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.yellow[100],
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                    ),

                                  ),
                                  child: const Text('Use', style:
                                  TextStyle(fontFamily: 'Puling', color: Colors.black,fontSize: 16), )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 170.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                          color:  const Color(0xFFD9C6D9), width: 3
                      )
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xFFD9C6D9), width: 3
                                )
                            ),
                            image: DecorationImage(
                                image:AssetImage('assets/Screenshot 2024-11-28 081623.png'),
                                fit: BoxFit.cover)
                        ),
                      ),
                      Expanded(child:
                      Container(
                        color: const Color(0xFFEED3EE),
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        child:  Row(
                          children: [
                            const Text('Guka', style:
                            TextStyle(fontFamily: 'Puling',color: Colors.black,fontSize: 16),),
                            const SizedBox(width: 190.0),
                            TextButton(onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.yellow[100],
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                  ),

                                ),
                                child: const Text('Use',style:
                                TextStyle(fontFamily: 'Puling', color: Colors.black,
                                fontSize: 16),))


                          ],
                        ),
                      ))
                    ],
                  ),
                )

              ]
          )
      ),
    );
  }

}