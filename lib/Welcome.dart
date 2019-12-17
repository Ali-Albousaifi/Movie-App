

import 'package:flutter/material.dart';
import 'package:movieapp1/Home.dart';
import 'package:movieapp1/Module/welcome_pages.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List<Pages> pages = [
    Pages(title: 'Welcome', images: 'assets/images/movie1.jpg'),
    Pages(title: '',images: 'assets/images/movie2.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageView.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(pages[index].images),
                      fit: BoxFit.fill)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Text(pages[index].title,
                      style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade200
                      ),
                    ),
                  ),
                  
                ],
              ),
            );
          },
         onPageChanged: (index)
         {
           value.value=index;
         }
        ),
        Transform.translate
        (child: pageViewIndicator(pages.length),
          offset: Offset(0, 530),
        
        ),
        
        Transform.translate(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text('Get Started'),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context)
                    {
                      return Home();
                    }
                  ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.redAccent.shade200,
              ),
            ),
          ),
          offset: Offset(0, -20),
        )
      ],
    ));
  }
}
