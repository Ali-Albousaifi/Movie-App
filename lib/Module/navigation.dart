  import 'package:flutter/material.dart';
import 'package:movieapp1/Home.dart';
import 'package:movieapp1/now_playing.dart';
import 'package:movieapp1/toprated_movies.dart';
import 'package:movieapp1/up_coming.dart';

import '../popular_movies.dart';

class MenueItem {
  String title;
  Function destination;

  MenueItem(this.title, this.destination);
}


   

Widget navigationDrawer()
{
  return Padding(
      padding: EdgeInsets.only(top: 40, left: 25),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              pages[index].title,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.grey.shade700,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return pages[index].destination();
                },
              ));
            },
          );
        },
        itemCount: pages.length,
      ),
    );
}

List<MenueItem> pages=[
  
  MenueItem('TopRated',()=> TopRatedMovies()),
  MenueItem('Now Playing',()=> NowPlayingMovies()),
  MenueItem('up Coming',()=> UpComingMovies())

];