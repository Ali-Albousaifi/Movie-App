import 'package:flutter/material.dart';
import 'package:movieapp1/The%20Vow.dart';
import 'package:movieapp1/Twilight.dart';

class FiftyShadesDarker extends StatefulWidget {
  @override
  _FiftyShadesDarker createState() => _FiftyShadesDarker();
}

class _FiftyShadesDarker extends State<FiftyShadesDarker> {
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
                  'assets/images/fifty shades darker.jpg',
                  fit: BoxFit.cover,
                )),
            Transform.translate(
              child: Text(
                'Fifty Shades Darker',
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
                    '2.2M',
                    style: TextStyle(color: Colors.white),
                  ),
                  Transform.translate(
                    child: Text(
                      '2015-5-1',
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
                'When a wounded Christian Grey (Jamie Dornan) tries to entice a cautious Anastasia Steele (Dakota Johnson) back into his life, she demands a new arrangement before she will give him another chance. As the two begin to build trust and find stability, shadowy figures from Christians past start to circle them, determined to destroy their hopes for a future together. ',
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
                      'Sexy',
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
                      'Romantic',
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
                            return TheVow();
                          }
                        ));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/the vow.jpg',
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
                            return Twilight(); 
                          }
                        ));
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
                          'The Vow',
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
                    offset: Offset(100, 0),
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
