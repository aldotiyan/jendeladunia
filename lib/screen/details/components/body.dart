import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          ImageAndIcons(size: size)
        ],
      ),
    );
      
  }
}

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDeafultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget> [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDeafultPadding *4 ),
                child: Column(
                children: <Widget> [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: kDeafultPadding),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/icons/back.png")),
                  ),
                  Spacer(),
                  iconCard(icon: "assets/icons/tokopedia.png",),
                  iconCard(icon: "assets/icons/shoppe.png"),
                  iconCard(icon: "assets/icons/gramedia.png"),
                  Spacer()
                ],
            ),
              )
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  )
                  ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/buku3.jpg")
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class iconCard extends StatelessWidget {
  const iconCard({
    Key? key, required this.icon,
    
  }) : super(key: key);
  final String icon;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RaisedButton(
      onPressed: (){Navigator.pop(context);},
      child: Container(
        
        padding: EdgeInsets.all(kDeafultPadding / 2),
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [BoxShadow(offset: Offset(0,10),
          blurRadius: 25,
          color: Colors.brown.withOpacity(0.22)
          ),
          BoxShadow(offset: Offset(-10,-10),
          blurRadius: 15,
          color: Colors.white,
          )
          ]
          ),
          child: Image.asset(icon),
      ),
    );
  }
}