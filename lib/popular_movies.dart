import 'package:flutter/material.dart';
import 'package:movieapp1/API/APIS.dart';
import 'package:movieapp1/Module/Movie.dart';

import 'API/Utilities.dart';

class PopularMovies extends StatefulWidget {
  final Movie data;

  PopularMovies({this.data});

  @override
  _PopularMoviesState createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  TextStyle _styleTitle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  TextStyle _description =
      TextStyle(color: Colors.white, fontSize: 15, height: 1.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: MoviePages.fetchAllMovieDetails(widget.data.id),
            builder: (context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  Text('Not Found');
                  break;
                case ConnectionState.waiting:
                  _loading();
                  break;
                case ConnectionState.active:
                  _loading();
                  break;
                case ConnectionState.done:
                  return ListView(children: <Widget>[
                    Container(
                      color: Colors.grey.shade400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              width: double.infinity,
                              height: 250,
                              child: Image.network(
                                baseUrlImage + snapshot.data.backdrop_path,
                                fit: BoxFit.cover,
                              )),
                          Transform.translate(
                            child: Text(
                              snapshot.data.title,
                              style: _styleTitle,
                            ),
                            offset: Offset(10, 10),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 10),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade800,
                                ),
                                Text(
                                  snapshot.data.vote_count.toString(),
                                  style: TextStyle(color: Colors.white),
                                ),
                                Transform.translate(
                                  child: Text(
                                    snapshot.data.release_date.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  offset: Offset(50, 0),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              snapshot.data.overview,
                              style: _description,
                            ),
                          ),
                          Container(
                            width: 400,
                            child: Row(
                              children: <Widget>[
                                Card(
                                  color: Colors.grey.shade500,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 30,
                                        right: 30),
                                    child: Text(
                                      snapshot.data.types[0]['name'],
                                      textScaleFactor: 0.85,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Card(
                                  color: Colors.grey.shade500,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 30,
                                        right: 30),
                                    child: Text(
                                      snapshot.data.types[1]['name'],
                                      textScaleFactor: 0.85,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Card(
                                  color: Colors.grey.shade500,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 15,
                                        right: 15),
                                    child: Text(
                                      snapshot.data.types[2]['name'],
                                      textScaleFactor: 0.85,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          FutureBuilder(
                              future:
                                  MoviePages.fetchSimilarMovies(widget.data.id),
                              builder: (context, AsyncSnapshot snapshot) {
                                if (snapshot.data == null) {
                                  _loading();
                                } else {
                                  return Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Similar Movies',
                                          style: _styleTitle,
                                        ),
                                      ),
                                      Container(
                                        height: 150,
                                        width: 400,
                                        padding: EdgeInsets.only(left: 5),
                                        child: Image.network(
                                          baseUrlImage +
                                              snapshot.data.backdrop_path,
                                          fit: BoxFit.cover,
                                          scale: 50,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        snapshot.data.title,
                                        style: _styleTitle,
                                      ),
                                    ],
                                  );
                                }
                                return Container();
                              }),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ]);
                  break;
              }
              return Container();
            }));
  }

  Widget _loading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
