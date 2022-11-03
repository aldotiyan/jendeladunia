import 'package:flutter/material.dart';
import 'package:myfirstproject/constants.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';
import 'package:myfirstproject/screen/home/components/body.dart';
import 'package:myfirstproject/screen/details/detail_screen.dart';

class RecomendedBook extends StatelessWidget {
  const RecomendedBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomendedCard(
            image: "assets/images/buku3.jpg",
            title: "The Jungle Book",
            country: "Brazil",
            price: 440,
            press:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
            }
          ),
          recomendedCard(
            image: "assets/images/buku5.jpg",
            title: "The Jungle Book",
            country: "Brazil",
            price: 440,
            press:(){},
          ),
          recomendedCard(
            image: "assets/images/buku6.jpg",
            title: "The Jungle Book",
            country: "Brazil",
            price: 440,
            press:(){},
          ),
          recomendedCard(
            image: "assets/images/buku8.jfif",
            title: "The Jungle Book",
            country: "Brazil",
            price: 440,
            press:(){},
          ),
        ],
      ),
    );
  }
}

class recomendedCard extends StatelessWidget {
  const recomendedCard({
    Key? key,
    required this.image,required this.title,required this.country,
    required this.price,required this.press,
  }) : super(key: key);
  final String image,title,country;
  final int price;
  final Function() press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDeafultPadding,
        top: kDeafultPadding / 2,
        bottom: kDeafultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDeafultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.brown.withOpacity(0.23)
                )]
                ),
              child: Row(
                children: <Widget> [
                  RichText(
                    text:TextSpan(
                      children: [TextSpan( text: "$title\n",
                      style: Theme.of(context).textTheme.button
                      ),
                      TextSpan(
                        text: "$country",style: TextStyle(
                          color: Colors.greenAccent,
                        ) 
                      )
                      ],
                    ), 
                    ),
                    Spacer(),
                    Text("$price",style: Theme.of(context).textTheme.button?.copyWith(color: Colors.brown),),
                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}

