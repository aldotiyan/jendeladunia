import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/home/components/body.dart';


class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDeafultPadding * 2,
      right: kDeafultPadding * 2,bottom: kDeafultPadding),
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(offset: Offset(0, -10),
        blurRadius: 35,
        color: Colors.brown.withOpacity(0.38),
        )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget> [
          IconButton(onPressed: (){}, icon: Image(
            image: AssetImage("assets/icons/book.png")),),
          IconButton(onPressed: (){
            
          }, icon: Image(
            image: AssetImage("assets/icons/home.png")),),
          IconButton(onPressed: (){}, icon: Image(
            image: AssetImage("assets/icons/person.png")),),  
        ],
      ),
    );
  }
}