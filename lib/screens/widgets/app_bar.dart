import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Hi, Dean!',
        style: TextStyle(color: Colors.black, fontSize: 26),
      ),
      elevation: 0,
      backgroundColor: Colors.grey[100],
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 33,
          ),
          color: Colors.black54,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.ellipsisV,
            size: 25,
          ),
          color: Colors.black54,
        ),
      ],
    );
  }
}
