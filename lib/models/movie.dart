class Movie {
  String title;
  String backDropPath;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;
  String originalLanguage;

  Movie ({
    required this.title,
    required this.backDropPath,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
    required this.originalLanguage
});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"],
      backDropPath: json["backdrop_path"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      posterPath: json["poster_path"],
      releaseDate: json["release_date"].toString(),
      voteAverage: json["vote_average"].toDouble(),
      originalLanguage: json["original_language"],
    );
  }

  Map<String, dynamic> toJson() => {
    "title": title,
    "overview": overview,
  };
}


/*
"adult": false,
"backdrop_path": "/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg",
"genre_ids": [
28,
878,
12,
53
],
"id": 912649,
"original_language": "en",
"original_title": "Venom: The Last Dance",
"overview": "Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.",
"popularity": 9823.665,
"poster_path": "/aosm8NMQ3UyoBVpSxyimorCQykC.jpg",
"release_date": "2024-10-22",
"title": "Venom: The Last Dance",
"video": false,
"vote_average": 6.751,
"vote_count": 1428*/
