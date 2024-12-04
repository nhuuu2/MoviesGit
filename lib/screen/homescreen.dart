import 'package:chat_app/screen/conan.dart';
import 'package:chat_app/screen/onepiece.dart';
import 'package:chat_app/screen/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/CustomNavbar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*backgroundColor: const Color(0xFF1C1C27),*/
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1C27),
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: RichText(text: const TextSpan(
              children: <TextSpan> [
                TextSpan(text: 'Stream',style:
                TextStyle(color: Colors.redAccent,fontSize: 24)),
                TextSpan(text: 'Everywhere',style:
                TextStyle(color: Colors.white,fontSize: 24))
              ]
          )
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset('assets/ironman.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,),
                  ),
                  Padding(padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Column(
                      children: [
                        Text('Continue watching',style:
                        TextStyle(color: Colors.white, fontSize: 14),),
                        Text('Ready player one',style:
                        TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),)

                      ],
                    ),
                  ),)
                ],
            ),
            ),

                const SizedBox(height: 35),
                const Text('Trending',style:
                  TextStyle(
                    color: Colors.white,
                    fontSize: 23
                  ),),

                const SizedBox(height: 15),
                CarouselSlider(items: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen1(),
                        ),
                      );
                    },
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/starwars.jpeg',
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'IMDb',
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      SizedBox(width: 5),
                                      Text('7.0',style:
                                      TextStyle(color: Colors.white,fontSize: 16),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Text(
                                'Star Wars: The Last Jedi',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Onepiece(),
                        ),
                      );
                    },
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/onepiece.jpeg',
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'IMDb',
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      SizedBox(width: 5),
                                      Text('8.0',style:
                                      TextStyle(color: Colors.white,fontSize: 16),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text('One Piece',style:
                                TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                              /*const Text(
                                'One Piece',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),*/
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Conan(),
                        ),
                      );
                    },
                    child: Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              'assets/conan.jpeg',
                              height: 300,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Column(
                                children: [
                                  Text(
                                    'IMDb',
                                    style: TextStyle(color: Colors.white, fontSize: 14),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      SizedBox(width: 5),
                                      Text('9.0',style:
                                      TextStyle(color: Colors.white,fontSize: 16),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text('Detective Conan',style:
                                TextStyle(color: Colors.white,fontSize: 20),),
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ], options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                )),
            ]
        ),
        ),
      ),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
