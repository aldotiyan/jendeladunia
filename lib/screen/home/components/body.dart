
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';


import 'header_with_seacrhbox.dart';
import 'recomended_book.dart';
import 'title_with_more_btn.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // meneydiakan total height dan width of our screen
    Size size = MediaQuery.of(context).size;
    // berguna agar dapat scroll di hp kecil
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen();
              }));
            }
            ),
            RecomendedBook(),
            TitleWithMoreBtn(
              title: "Topik Terkini",
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen();
                }));
              }),
              RecomendedBook()
        ]
      ),
    );
  }
}

