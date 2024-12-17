import 'package:chat_app/color.dart';
import 'package:chat_app/models/movie.dart';
import 'package:chat_app/widgets/relatedMovie_widget.dart';
import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';
import '../api/api.dart';
import '../constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.movie});

  final Movie movie;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  late Future<List<Movie>> relatedMovie;

  @override
  void initState() {
  super.initState();
  relatedMovie = Api().getupComming();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: CustomScrollView(slivers: [
        SliverAppBar.large(
          leading: Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(top: 16, left: 16),
            decoration: BoxDecoration(
                color: background, borderRadius: BorderRadius.circular(9)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
            ),
          ),
          backgroundColor: background,
          expandedHeight: 260,
          pinned: true,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24)),
                  child: Image.network(
                    '${Constant.imagePath}${widget.movie.posterPath}',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                const Positioned(
                    top: 40, bottom: 50, left: 50, right: 50,
                    child: Icon(
                      Icons.play_circle_filled_rounded,
                      size: 60, color: Colors.red,))
              ]
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.movie.title,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Release date: ',
                            style:
                            TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            widget.movie.releaseDate,
                            style: const TextStyle(
                                color: Colors.white60, fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Language: ',
                            style:
                            TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            widget.movie.originalLanguage,
                            style: const TextStyle(
                                color: Colors.white60, fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text('Synopsis',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                const SizedBox(height: 5),
                ReadMoreText(widget.movie.overview,
                    numLines: 3,
                    style: const TextStyle(
                        fontSize: 16, color: Colors.white60),
                    readMoreText: 'Read more',
                    readLessText: 'Read less'),
                const SizedBox(height: 15),
                const Text('Related movies',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                const SizedBox(height: 5),
                SizedBox(
                  child: FutureBuilder(
                    future: relatedMovie,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(snapshot.error.toString()),
                        );
                      } else if (snapshot.hasData) {
                        return RelatedmovieWidget(
                          snapshot: snapshot,
                        );
                      } else {
                        return const Center(
                            child: CircularProgressIndicator());
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
