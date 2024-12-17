import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_app/api/api.dart';
import 'package:chat_app/color.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../widgets/trending_widget.dart';
import '../models/movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Movie>> popularMovies;

  @override
  void initState() {
    super.initState();
    popularMovies = Api().getPopularMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/title.png',
          fit: BoxFit.cover,
          height: 60,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  FutureBuilder<List<Movie>>(
                    future: popularMovies,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        final imageUrl = 'https://image.tmdb.org/t/p/w500${snapshot.data![0].posterPath}';
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.network(
                            imageUrl,
                            height: 250,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                  Positioned(
                    left: 15,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: opacityBox,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            'Continue watching',
                            style: TextStyle(
                              color: whitetext,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Ready player one',
                            style: TextStyle(
                              color: whitetext,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 40, bottom: 60, left: 50, right: 50,
                      child: Icon(
                        Icons.play_circle_filled_rounded,
                        size: 50, color: Colors.red,))
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Trending',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                child: FutureBuilder(
                    future: popularMovies,
                    builder: (context, snapshot) {
                      if(snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return Trending_widget(snapshot: snapshot,);
                      } else{
                        return const Center(child: CircularProgressIndicator());
                      }
                })
                ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
