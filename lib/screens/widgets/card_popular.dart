import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treino_tela/screens/widgets/buttom_card.dart';

class CardPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.purple,
        ),
        child: Card(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 14),
                    child: FaIcon(
                      FontAwesomeIcons.palette,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Design System',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(height: 5),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Developer',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('12 chapter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                  ),
                ),
                ButtomCard(),
              ],
            )),
      ),
    );
  }
}
