import 'dart:convert';

import 'package:hakkuflix/constants.dart';
import 'package:hakkuflix/models/movie.dart';
import 'package:hakkuflix/models/tv.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=${Constants.apiKey}';
  static const _topRatedUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';

  static const _popularmovies =
      'https://api.themoviedb.org/3/movie/popular?api_key=${Constants.apiKey}';

  static const _trendingtv =
      'https://api.themoviedb.org/3/trending/tv/day?api_key=${Constants.apiKey}';

  static const _toptv =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=${Constants.apiKey}';

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List<Movie>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List<Movie>> getPopularMoview() async {
    final response = await http.get(Uri.parse(_popularmovies));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  //========================

  Future<List<TV>> getTrendingTv() async {
    final response = await http.get(Uri.parse(_trendingtv));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((tv) => TV.fromJson(tv)).toList();
    } else {
      throw Exception('Something happened');
    }
  }

  Future<List<TV>> getPopularTv() async {
    final response = await http.get(Uri.parse(_toptv));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((tv) => TV.fromJson(tv)).toList();
    } else {
      throw Exception('Something happened');
    }
  }
}
