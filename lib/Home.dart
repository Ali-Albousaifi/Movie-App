import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp1/Brave%20Heart.dart';
import 'package:movieapp1/Enemy%20at%20the%20gates.dart';
import 'package:movieapp1/Fast&Farious.dart';
import 'package:movieapp1/Hitman.dart';
import 'package:movieapp1/Joker.dart';
import 'package:movieapp1/Mission%20Impossible.dart';
import 'package:movieapp1/Need%20for%20speed.dart';
import 'package:movieapp1/The%20Vow.dart';
import 'package:movieapp1/Transporter%203.dart';
import 'package:movieapp1/Twilight.dart';
import 'package:movieapp1/fifty%20shades%20darker.dart';
import 'package:movieapp1/the%20Expandables%202.dart';
import 'Movies.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<Movies> movies = [
    Movies(
        'Fast & Farious', 'assets/images/fast&farious 8.jpg', FastAndFarious()),
    Movies('Joker', 'assets/images/joker.jpg', Joker()),
    Movies('Mission Impossible', 'assets/images/missionImpossible.jpg',
        MissionImpossible()),
    Movies('The Expandables 2', 'assets/images/the Expandables 2.jpg',
        TheExpandables()),
    Movies('Braveheart', 'assets/images/Braveheart.jpg', BraveHeart()),
    Movies('Fifty Shades Darker', 'assets/images/fifty shades darker.jpg',
        FiftyShadesDarker()),
    Movies('Transporter 3', 'assets/images/transporter 3.jpg', Transporter()),
    Movies('Enemy at the Gates', 'assets/images/enemy at the gates.jpg',
        EnemyAtTheGates()),
    Movies('Hitman', 'assets/images/hitman.jpg', Hitman()),
    Movies(
        'Need For Speed', 'assets/images/need for speed.jpg', NeedForSpeed()),

        Movies('The Vow', 'assets/images/the vow.jpg', TheVow()),

        Movies('The Twiligt', 'assets/images/Twilight.jpg', Twilight())
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
                      child: Image.asset(
                        movies[index].image,
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
                                movies[index].title,
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
          itemCount: movies.length,
        ));
  }
}
