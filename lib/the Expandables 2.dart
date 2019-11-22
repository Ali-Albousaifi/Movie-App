import 'package:flutter/material.dart';
import 'package:movieapp1/Enemy%20at%20the%20gates.dart';
import 'package:movieapp1/Mission%20Impossible.dart';

class TheExpandables extends StatefulWidget {
  @override
  _TheExpandables createState() => _TheExpandables();
}

class _TheExpandables extends State<TheExpandables> {
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
                  'assets/images/the Expandables 2.jpg',
                  fit: BoxFit.cover,
                )),
            Transform.translate(
              child: Text(
                'The Expandables',
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
                    '1.1M',
                    style: TextStyle(color: Colors.white),
                  ),
                  Transform.translate(
                    child: Text(
                      '2017-10-9',
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
                'Mercenary leader Barney Ross (Sylvester Stallone), Lee Christmas (Jason Statham) and the rest of the Expendables team reunite when Mr. Church (Bruce Willis) hires them for a seemingly easy job. But things go terribly wrong, compelling the mercenaries to seek revenge for a comrades murder. With the odds against them, Barney and his team are hell-bent on payback and cut a path of destruction through opposing forces, only to encounter an unexpected threat: six pounds of weapons-gradeplutonium',
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
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)
                          {
                            return EnemyAtTheGates();
                          }
                        )
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/enemy at the gates.jpg',
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
                              return MissionImpossible();
                            }
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 0, left: 10),
                        child: Image.asset(
                          'assets/images/missionImpossible.jpg',
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
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Enemy At ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'The Gates',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    offset: Offset(20, 0),
                  ),
                  Transform.translate(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Mission',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                         Text(
                          'Impossible',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    offset: Offset(60, 0),
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
