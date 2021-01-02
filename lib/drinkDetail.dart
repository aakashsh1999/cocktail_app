import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key key, this.drink}) : super(key: key);//Constructor
  
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(
            gradient: LinearGradient(colors:[Colors.yellow, Colors.cyan], begin: Alignment.bottomRight, end: Alignment.topLeft)
       ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar (
          backgroundColor: Colors.transparent,
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Center(
            child:Column(
            children: [
              SizedBox(
                  height: 50.0,
              ),
              Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 50.0,
                            backgroundImage:
                                NetworkImage(drink["strDrinkThumb"] ??"https://afmec.org/images/no-image-available-icon.jpg"),
                          ),
              ),
               SizedBox(
                      height: 30.0,
                    ),
                    Text(
                          "${drink["idDrink"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),

                    SizedBox(
                      height: 30.0,
                    ),
                     Text(
                          "${drink["strDrink"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
            ],
            ),
          ),
        )
    );
  }
}
