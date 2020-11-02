import 'package:flutter/material.dart';
import 'package:treino_tela/screens/widgets/widget_recent.dart';

class CardRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Flexible(
          flex: 1,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                      child: Text(
                    'Recent Class',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.only(
                        right: 40,
                        bottom: 20,
                      ),
                      child: Text(
                        '..',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 5,
          child: Container(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return WidgetRecent();
              },
            ),
          ),
        ),
      ],
    );
  }
}
