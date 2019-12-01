import 'package:flutter/material.dart';
import 'package:movieapp1/API/MovieApi.dart';
import 'package:movieapp1/API/MovieDetailsApi.dart';
import 'package:movieapp1/Module/MovieHome.dart';
import 'Frozen II.dart';

import 'package:movieapp1/Module/MovieDetails.dart';

class Terminator extends StatefulWidget {
  @override
  _Terminator createState() => _Terminator();
}

class _Terminator extends State<Terminator> {

    MovieDetailsApi api=MovieDetailsApi();
    Movie_Api similar=Movie_Api();

  TextStyle _styleTitle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  TextStyle _description =
      TextStyle(color: Colors.white, fontSize: 15, height: 1.5);

  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: api.fetchAllMovieDetails(),
          builder: (context,AsyncSnapshot snapshot)
          {
              Details details=snapshot.data[1];

              return SingleChildScrollView(
      child: Container(
          color: Colors.grey.shade400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w500'+
                    details.backdrop_path,
                    fit: BoxFit.cover,
                  )),
              Transform.translate(
                child: Text(
                  details.title,
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
                      details.vote_count.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    Transform.translate(
                      child: Text(
                        details.release_date,
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
                      details.overview,
                  
                  style: _description,


                ),
              ),
              Row(
                children: <Widget>[
                  Card(
                    color: Colors.grey.shade500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        'Action',
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
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        'Reality',
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
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Text(
                        'History',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'similar Movies',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),

              FutureBuilder(
                future: similar.fetchAllMovie(),
                builder: (context,AsyncSnapshot snapshot)
                {   MovieHome similar1=snapshot.data[2];
                    MovieHome similar2=snapshot.data[0];

                  return Column(
                    children: <Widget>[
                             Row(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 150,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)
                            {
                                return Frozen();
                            }
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500/'+similar1.poster_path,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)
                            {
                                return Frozen();
                            }
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 0, left: 10),
                          child: Image.network(
                            'https://image.tmdb.org/t/p/w500/'+similar2.poster_path,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ],
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Transform.translate(
                      child: Text(
                        similar1.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      offset: Offset(20, 0),
                    ),
                    Transform.translate(
                      child: Text(
                        similar2.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      offset: Offset(60, 0),
                    )
                  ],
                ),
              )


                    ],
                  );
                }
              ),


           



            ],
          ),
      ),
    );
          }
                   
        ));
  }
}
