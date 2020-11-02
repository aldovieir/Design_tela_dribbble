import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treino_tela/screens/widgets/app_bar.dart';
import 'package:treino_tela/screens/widgets/bottom_menu.dart';
import 'package:treino_tela/screens/widgets/widget_popular.dart';
import 'package:treino_tela/screens/widgets/card_recent.dart';
import 'package:treino_tela/screens/widgets/card_week.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Flexible(flex: 3, child: Container(child: AppBarCustom())),
          Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(child: CardWeek()),
              )),
          Flexible(
              flex: 9,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: WidgetPopular())),
          Flexible(
              flex: 11,
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: CardRecent())),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
