import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/constant.dart';
import 'package:chat_app/screen/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';
class Trending_widget extends StatelessWidget {
  const Trending_widget({
    super.key, required this.snapshot,
  });

  final AsyncSnapshot snapshot;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: snapshot.data!.length,
          options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              viewportFraction: 0.55,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              pageSnapping: true
          ),
          itemBuilder: (context, itemIndex, pageViewIndex){
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailScreen(
                        movie: snapshot.data[itemIndex])));
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      height: 300,
                      width: 200,
                      child: Image.network(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          '${Constant.imagePath}${snapshot.data![itemIndex].posterPath}'
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10, right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: opacityBox,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                          child: Column(
                            children: [
                              const Text('TMDB',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16
                              ),),
                              Row(
                                children: [
                                  Text(snapshot.data![itemIndex].voteAverage.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16
                                    ),),
                                  const SizedBox(width: 10,),
                                  const Icon(Icons.star,size: 16, color: Colors.yellow,),
                                ],
                              )
                            ],
                          ),
                  ))
                ]
              ),
            );
          },
        )
    );
  }
}