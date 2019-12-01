import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp1/Angel%20Has%20Fallen.dart';
import 'package:movieapp1/Ford%20v%20Ferrari.dart';
import 'package:movieapp1/Hustlers.dart';
import 'package:movieapp1/It%20Chapter%20Two.dart';
import 'package:movieapp1/Knives%20Out.dart';
import 'package:movieapp1/One%20Piece%20Stampede.dart';
import 'package:movieapp1/Ready%20or%20Not.dart';
import 'package:movieapp1/Red%20Shoes%202019.dart';
import 'package:movieapp1/The%20lrishman.dart';
import 'Module/MovieHome.dart';
import 'Parasite.dart';
import 'Terminator.dart';

import 'Frozen II.dart';

import 'Movies.dart';
import 'API/MovieApi.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  Movie_Api api = Movie_Api();

  List<Movies> movies = [
    Movies(Frozen()),
    Movies(Terminator()),
    Movies(TheLirshman()),
    Movies(Hustlers()),
    Movies(AngelHasFallen()),
    Movies(KnivesOut()),
    Movies(ItChapterTwo()),
    Movies(ReadyorNot()),
    Movies(OnePieceStampede()),
    Movies(FordvsFerrari()),
    Movies(RedShoes2019()),
    Movies(Parasite()),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie Trends'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return FutureBuilder(
                future: api.fetchAllMovie(),
                builder: (context, AsyncSnapshot snapshot) {
                  MovieHome movieHome = snapshot.data[index];
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return movies[index].detials;
                          }),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: double.infinity,
                            height: 200,
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w500/' +
                                  movieHome.poster_path,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: double.infinity,
                                //height: 25,
                                child: Wrap(
                                  children: <Widget>[
                                    Text(
                                      movieHome.title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ));
                });
          },
          itemCount: 12,
        ));
  }
}
