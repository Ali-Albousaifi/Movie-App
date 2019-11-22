import 'package:flutter/material.dart';
import 'package:movieapp1/Joker.dart';
import 'package:movieapp1/Transporter%203.dart';
import 'package:movieapp1/Twilight.dart';
import 'package:movieapp1/fifty%20shades%20darker.dart';

class TheVow extends StatefulWidget {
  @override
  _TheVow createState() => _TheVow();
}

class _TheVow extends State<TheVow> {
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
                  'assets/images/the vow.jpg',
                  fit: BoxFit.cover,
                )),
            Transform.translate(
              child: Text(
                'The Vow',
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
                    '200.5K',
                    style: TextStyle(color: Colors.white),
                  ),
                  Transform.translate(
                    child: Text(
                      '2009-12-20',
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
                'The Vow is a 2012 American romantic drama film directed by Michael Sucsy and written by Abby Kohn, Marc Silverstein, and Jason Katims, inspired by the true story of Kim and Krickitt Carpenter.[3] The film stars Rachel McAdams and Channing Tatum as the Collinses, with Sam Neill, Scott Speedman, and Jessica Lange in supporting roles. As of 2013, The Vow was the eighth highest-grossing romantic drama film produced since 1980.[4] This was Spyglass Entertainments last film until the companys resurrection in 2019. ',
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
                      'Romantic',
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
                      'Drama',
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
                      'Fantasy',
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
                          return FiftyShadesDarker();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/fifty shades darker.jpg',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Container(
                  height: 100,
                  width: 150,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Twilight();
                        }));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 0, left: 10),
                        child: Image.asset(
                          'assets/images/Twilight.jpg',
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
                          'Fifty',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Shades Darker',
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
                          'Twilight',
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
