import 'package:flutter/material.dart';

class Movie {
  String title,
      poster_path,
      backdrop_path,
      overview,
      release_date,
      vote_count,
      id;
      List<dynamic>types;

  Movie({
    this.title,
    this.poster_path,
    this.id,
    this.backdrop_path,
    this.overview,
    this.release_date,
    this.vote_count,
    this.types
  });
}
