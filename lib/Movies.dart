
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Movies
{
  String _title, _image;
  Widget _detailsMovie;

     
  Movies(this._title,this._image,this._detailsMovie);

  

  String get image=>_image;
   String get title=>_title;
   Widget get detials=>_detailsMovie;
  

    

}

