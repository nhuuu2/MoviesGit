import 'dart:convert';
import 'package:chat_app/constant.dart';
import 'package:chat_app/models/movie.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _popularUrl = 'https://api.themoviedb.org/3/movie/popular?'
      'api_key=${Constant.apikey}';
  static const _upCommingUrl = 'https://api.themoviedb.org/3/movie/upcoming?'
      'api_key=${Constant.apikey}';


  Future<List<Movie>> getPopularMovies() async{
    final response = await http.get(Uri.parse(_popularUrl));
    if(response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie)=> Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List<Movie>> getupComming() async{
    final response = await http.get(Uri.parse(_upCommingUrl));
    if(response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie)=> Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
}
