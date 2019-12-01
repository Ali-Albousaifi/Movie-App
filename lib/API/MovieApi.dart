import 'dart:convert';

import 'package:movieapp1/Module/MovieHome.dart';
import 'package:http/http.dart' as http;
import 'baseurl.dart';
class Movie_Api {
  Future<List<MovieHome>> fetchAllMovie() async {
    List<MovieHome> movs = List<MovieHome>();
    String url =baseUrl;
        

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsondata = jsonDecode(response.body);
      var data = jsondata['results'];
      

      for (var items in data) {
        MovieHome movies =
            MovieHome(title: items['title'], poster_path: items['poster_path']);
        movs.add(movies);
      }
    }
    return movs;
  }
}
