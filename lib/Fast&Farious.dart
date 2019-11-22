import 'package:flutter/material.dart';
import 'package:movieapp1/Hitman.dart';
import 'package:movieapp1/Need%20for%20speed.dart';

class FastAndFarious extends StatefulWidget {
  @override
  _FastAndFarious createState() => _FastAndFarious();
}

class _FastAndFarious extends State<FastAndFarious> {
  TextStyle _styleTitle =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

  TextStyle _description =
      TextStyle(color: Colors.white, fontSize: 15, height: 1.5);

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.grey.shade400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  'assets/images/fast&farious 8.jpg',
                  fit: BoxFit.cover,
                )),
            Transform.translate(
              child: Text(
                'The Fast And The Farious',
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
                    '6.9K',
                    style: TextStyle(color: Colors.white),
                  ),
                  Transform.translate(
                    child: Text(
                      '2019-8-16',
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
                'Dominic Toretto and Leslie are enjoying their honeymoon in Cuba when they notice his cousin getting into trouble with Fernando for not being able to pay off his debts. Dom encourages Fernando to keep it about the cars and decides to race him for the car. He breaks down his cousin’s car to make it more efficient and manages to win the heated race by a very narrow margin. Fernando gives the car to Dom, out of fairness, but Dom decides to let Fernando keep it, and claims that his respect is good enough.',
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
                        top: 10, bottom: 10, left: 30, right: 30),
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
                        top: 10, bottom: 10, left: 30, right: 30),
                    child: Text(
                      'Fantasy',
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
                        top: 10, bottom: 10, left: 30, right: 30),
                    child: Text(
                      'Adventure',
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
                            return NeedForSpeed();
                          }
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/need for speed.jpg',
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
                            return Hitman();
                          }
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 0, left: 10),
                        child: Image.asset(
                          'assets/images/hitman.jpg',
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
                  Text(
                    'Need For Speed',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Transform.translate(
                    child: Text(
                      'Hitman',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    offset: Offset(50, 0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
