import 'package:flutter/material.dart';
import 'package:myfirstproject/components/my_bottom_navbar.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavbar(),
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/icons/Menu.png",color: Colors.black,scale: 1.5,),
        onPressed: () {},
        )
        );
  }
}

