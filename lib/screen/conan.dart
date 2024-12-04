import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';

class Conan extends StatelessWidget {
  const Conan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C27),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://wallpaperaccess.com/full/1084887.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle_filled_rounded,
                      color: Colors.red[200],
                      size: 50,
                    ),
                  )
                ],
              ),

            ),
            const SizedBox(height: 10),
            Padding(padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Detective Conan',style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 24
                      ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white60,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text('152 minutes',style:
                        TextStyle(color: Colors.white60,fontSize: 14),),
                        SizedBox(width: 20),
                        Icon(
                          Icons.star,
                          color: Colors.white60,
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text('9.0 JMDb',style:
                        TextStyle(color: Colors.white60,fontSize: 14),)
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Release date',style:
                            TextStyle(color: Colors.white,fontSize: 18),),
                            SizedBox(height: 5,),
                            Text('December 9, 2009',style:
                            TextStyle(color: Colors.white60,fontSize: 14),)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Genre',style:
                            TextStyle(color: Colors.white,fontSize: 18),),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.white60
                                      )
                                  ),
                                  child: const Text('Mystery',style:
                                  TextStyle(color: Colors.white60,fontSize: 14),),
                                ),
                                const SizedBox(width: 6),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.white60
                                      )
                                  ),
                                  child: const Text('Thriller',style:
                                  TextStyle(color: Colors.white60,fontSize: 14),),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Synopsis',style:
                      TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                    const SizedBox(height: 3),
                    const ReadMoreText(
                          'Kaito Kuroba, also known as the infamous Phantom Thief Kid,'
                          ' has a unique ability to disguise himself and steal precious '
                          'items. However, one night, he faces off with a mysterious '
                          'organization, only to be poisoned and transformed into a child.'
                          ' Under the alias Conan Edogawa, he continues his detective work, ',
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                          height: 1.5
                      ),
                      numLines: 3,
                      readMoreText: 'Read more',
                      readLessText: 'Read less',
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Related movies',style:
                      TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                    const SizedBox(height: 5),
                    CarouselSlider(
                        items: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset('assets/starwars.jpeg',
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                ),
                                Positioned(
                                    bottom: 10, right: 10, left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.black12.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(16.0),
                                      ),
                                      child: const Text('Star Wars: the rise of the skywalker',style:
                                      TextStyle(color: Colors.white, fontSize: 16),),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset('assets/starwars.jpeg',
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                ),
                                Positioned(
                                    bottom: 10, right: 10, left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.black12.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(16.0),
                                      ),
                                      child: const Text('Star Wars: the rise of the skywalker',style:
                                      TextStyle(color: Colors.white, fontSize: 16),),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset('assets/starwars.jpeg',
                                    height: 150,
                                    width: double.infinity,
                                    fit: BoxFit.cover,),
                                ),
                                Positioned(
                                    bottom: 10, right: 10, left: 10,
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.black12.withOpacity(0.4),
                                        borderRadius: BorderRadius.circular(16.0),
                                      ),
                                      child: const Text('Star Wars: the rise of the skywalker',style:
                                      TextStyle(color: Colors.white, fontSize: 16),),
                                    )),
                              ],
                            ),
                          )
                        ],
                        options: CarouselOptions(
                          height: 170,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          autoPlay: false,)

                    )
                  ],
                )

            )
          ],
        ),
      ),
    );
  }
}
