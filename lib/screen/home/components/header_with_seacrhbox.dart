import 'package:flutter/material.dart';
import 'package:myfirstproject/screen/home/components/body.dart';
import '../../../constants.dart';




class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom: kDeafultPadding * 2.5),
      // mengcover 20% dari total height 
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDeafultPadding,
              right: kDeafultPadding,
              bottom: 36 + kDeafultPadding
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(color: Colors.brown,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36)
              )
              ),
              child: Row(
                children: <Widget> [
                  Text("Hi Aldo !",
                  style:Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold
                  ),
                  ),
                  Spacer(),
                  Image.asset("assets/images/imagerill.png",fit: BoxFit.cover,)
                ],
              ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
            height: 54,
            margin: EdgeInsets.symmetric(horizontal: kDeafultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDeafultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: Colors.brown.withOpacity(0.23)
                )
                ]
              ),
              
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Image.asset("assets/icons/search.png",width: 2,height: 2,)
                ),
              ),
          ))
        ],
      ),
    );
  }
}