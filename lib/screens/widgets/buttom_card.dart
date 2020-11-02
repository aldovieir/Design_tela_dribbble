import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15, left: 10, right: 15),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 3,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80), color: Colors.pink),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                      size: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 5, right: 60),
            child: AspectRatio(
              aspectRatio: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  'Join',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
