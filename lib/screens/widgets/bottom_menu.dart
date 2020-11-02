import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FFNavigationBar(
      theme: FFNavigationBarTheme(
        // barHeight: 40,
        itemWidth: 70,
        barBackgroundColor: Colors.grey[100],
        selectedItemBackgroundColor: Colors.transparent,
        selectedItemIconColor: Colors.blue,
        selectedItemBorderColor: Colors.transparent,
      ),
      onSelectTab: () {},
      items: [
        FFNavigationBarItem(
          iconData: Icons.home_filled,
          label: '',
        ),
        FFNavigationBarItem(
          iconData: FontAwesomeIcons.chartLine,
          label: '',
        ),
        FFNavigationBarItem(
          iconData: FontAwesomeIcons.calendarAlt,
          label: '',
        ),
        FFNavigationBarItem(
          iconData: Icons.person,
          label: '',
        ),
      ],
    );
  }
}
