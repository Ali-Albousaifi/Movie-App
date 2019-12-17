


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp1/Module/navigation.dart';


import 'package:movieapp1/popular_movies.dart';
import 'API/Utilities.dart';
import 'package:movieapp1/API/APIS.dart';

class UpComingMovies extends StatefulWidget {
  
  @override
  _UpComingMovies createState() => _UpComingMovies();
}

enum popMenue { favorite }

class _UpComingMovies extends State<UpComingMovies> {
  
List<int> _favourites=[];
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Up Coming Movies'),
          centerTitle: true,
          
        ),
          drawer:Drawer(
            child: navigationDrawer(),
          ),
        body:
         
         FutureBuilder(
            future: MoviePages.fetchUpComingMovies(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return _loading();
              } else {
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PopularMovies(data:snapshot.data[index])),
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                height: 200,
                                child: Image.network(
                                  baseUrlImage +
                                      snapshot.data[index].poster_path,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 145),
                                child: IconButton(
                                  iconSize: 25,
                                  icon: Icon(Icons.favorite),
                                  onPressed: () {
                                    setState(() {
                                      if (_favourites.contains(index)) {
                                        _favourites.remove(index);
                                      } else {
                                        _favourites.add(index);
                                      }
                                    });
                                  },
                                  color: (_favourites.contains(index))
                                      ? Colors.red
                                      : Colors.grey,
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
                                          snapshot.data[index].title,
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
                    },
                    itemCount: snapshot.data.length);
              }
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
