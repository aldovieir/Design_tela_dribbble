import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class CardWeek extends StatefulWidget {
  @override
  _CardWeekState createState() => _CardWeekState();
}

class _CardWeekState extends State<CardWeek> {
  List initialDay = ['S', 'M', 'T', 'W', 'T', 'F'];
  int selectedDay;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: initialDay.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(11),
          child: Center(
            child: AspectRatio(
              aspectRatio: 1,
              child: CircularProfileAvatar(
                '',
                radius: 100,
                backgroundColor:
                    (selectedDay == index) ? Colors.blue : Colors.white,
                initialsText: Text(
                  initialDay[index],
                  style: TextStyle(
                    fontSize: 19,
                    color: (selectedDay == index) ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                elevation: 0.5,
                onTap: () {
                  setState(() {
                    selectedDay = index;
                  });
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
