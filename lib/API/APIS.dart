import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:movieapp1/Module/Movie.dart';
import 'package:http/http.dart' as http;
import 'Utilities.dart';

class MoviePages {
  static Future<List<Movie>> fetchPopularMovies() async {
    List<Movie> movs = List<Movie>();
    String url = popularMovieUrl;

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsondata = jsonDecode(response.body);
      var data = jsondata['results'];

      for (var items in data) {
        Movie movies = Movie(
            title: items['title'],
            poster_path: items['poster_path'],
            id: items['id'].toString());
        movs.add(movies);
      }
    }
    return movs;
  }

  static Future<List<Movie>> fetchNowPlayingMovies() async {
    List<Movie> nowPlaying = [];
    var response = await http.get(nowPlayingUrl);
        

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['results'];

      for (var items in data) {
        Movie now = Movie(
            title: items['title'],
            poster_path: items['poster_path'],
            id: items['id'].toString());
        nowPlaying.add(now);
      }
      return nowPlaying;
    }
  }

  static Future<List<Movie>> fetchTopRatedMovies() async {
    List<Movie> topRated = [];

    var response = await http.get(topRatedUrl);
        
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['results'];

      for (var items in data) {
        Movie rates = Movie(
            title: items['title'],
            poster_path: items['poster_path'],
            id: items['id'].toString());

        topRated.add(rates);
      }

      return topRated;
    }
  }

  static Future<List<Movie>> fetchUpComingMovies() async {
    List<Movie> upComingMovies = [];

    var response = await http.get(upComingUrl);
        
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['results'];

      for (var items in data) {
        Movie upComing = Movie(
            title: items['title'],
            poster_path: items['poster_path'],
            id: items['id'].toString());
        upComingMovies.add(upComing);
      }
      return upComingMovies;
    }
  }

  static Future<Movie> fetchAllMovieDetails(String id) async {
    var response = await http.get(baseUrl +
        id +
        "?api_key=$key");

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      Movie details = Movie(
          backdrop_path: data['backdrop_path'],
          title: data['title'],
          overview: data['overview'],
          release_date: data['release_date'],
          vote_count: data['vote_count'].toString(),
          poster_path: data['poster_path'],
          id: data['id'].toString(),
          types: (data['genres'])
            
          );

      return details;
    }
    
  }

  static Future<Movie> fetchSimilarMovies(String id) async {

    

    var response = await http.get("https://api.themoviedb.org/3/movie/${id}/similar?api_key=5048363b03d158a355637d6347bb0011");
       

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var data = jsonData['results'];

      for (var items in data) {
        Movie similar = Movie(
          backdrop_path: items['backdrop_path'],
          title: items['title'],
          
          
        );
        
        return similar;
      }
    }
    
  }

  

}


