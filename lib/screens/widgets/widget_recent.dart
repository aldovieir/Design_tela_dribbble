import 'package:flutter/material.dart';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WidgetRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3.7,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: CircularProfileAvatar('',
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.palette,
                          color: Colors.white,
                        ),
                      ),
                      radius: 35,
                      backgroundColor: Colors.blue[800],
                      elevation: 0.5,
                      onTap: () {}),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DESIGN',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('Design System Dev...',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('12 chapter',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        )),
                  ],
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: SleekCircularSlider(
                    min: 0,
                    max: 65,
                    appearance: CircularSliderAppearance(
                      infoProperties: InfoProperties(
                        mainLabelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      customWidths: CustomSliderWidths(
                        trackWidth: 5,
                        progressBarWidth: 7,
                      ),
                      customColors: CustomSliderColors(
                          hideShadow: true,
                          trackColor: Colors.grey[100],
                          progressBarColor: Colors.blue[800],
                          dotColor: Colors.blue[800]),
                      startAngle: 240,
                      angleRange: 360,
                      size: 62,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
