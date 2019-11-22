import 'package:flutter/material.dart';
import 'package:movieapp1/Brave%20Heart.dart';
import 'package:movieapp1/Transporter%203.dart';

class EnemyAtTheGates extends StatefulWidget {
  @override
  _EnemyAtTheGates createState() => _EnemyAtTheGates();
}

class _EnemyAtTheGates extends State<EnemyAtTheGates> {
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
                  'assets/images/enemy at the gates.jpg',
                  fit: BoxFit.cover,
                )),
            Transform.translate(
              child: Text(
                'Enemy At The Gates',
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
                    '80.6K',
                    style: TextStyle(color: Colors.white),
                  ),
                  Transform.translate(
                    child: Text(
                      '2012-11-2',
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
                ' Enemy at the Gates is a movie based on a true story about the five-month battle over the city of Stalingrad. Hitler believes his German army is invincible, while Stalin wants to save the city which bears his name.Germans believe they can take the city and, thereby, take Russia. They did not count on the will of the Russian people, or the harsh Russian winter. Not only is winter hard on troops, it is also hard on the people of the city.  Starving, some of the citys residents resort to cannibalism as almost 2 million people die.',
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
            Row(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 150,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Transporter();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/transporter 3.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) 
                            {
                                  return BraveHeart();

                            }));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 0, left: 10),
                        child: Image.asset(
                          'assets/images/Braveheart.jpg',
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
                          'Transporter 3',
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
                          'BraveHeart',
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
