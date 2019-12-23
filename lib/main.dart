import 'package:flutter/material.dart';
import 'package:movieapp1/AppTheme.dart';



import 'Welcome.dart';





void main() => runApp(MovieApp());

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme,
      home: Welcome(),
    );
  }
}
