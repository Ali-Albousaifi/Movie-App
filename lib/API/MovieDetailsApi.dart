
import 'dart:convert';


import 'package:movieapp1/API/baseurl.dart';
import 'package:http/http.dart' as http;
import 'package:movieapp1/Module/MovieDetails.dart';


class MovieDetailsApi
{
  Future<List<Details>> fetchAllMovieDetails() async
  {     List<Details> det=List<Details>();
      String url=baseUrl;
      var response=await http.get(url);
      if(response.statusCode==200)
      {
        var jsondata=jsonDecode(response.body);
        var data=jsondata['results'];

        for(var items in data)
        {
          Details details= Details(backdrop_path: items['backdrop_path'],title: items['title'],overview: items['overview'],release_date: items['release_date'],vote_count: items['vote_count']);
          det.add(details);
        }
      }
      return det;
  }
}