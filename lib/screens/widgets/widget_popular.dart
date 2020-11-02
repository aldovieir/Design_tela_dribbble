import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treino_tela/screens/widgets/buttom_card.dart';
import 'package:treino_tela/screens/widgets/card_popular.dart';

class WidgetPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                    child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Container(
                    child: Text(
                  'View all',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
        Flexible(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: EdgeInsets.only(left: 15, right: 5),
                    child: CardPopular());
              },
            ))
      ],
    );
  }
}
