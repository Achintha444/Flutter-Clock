import 'dart:async';

import 'package:flutter/material.dart';

import 'clock_display.dart';
import 'time_set.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  TimeSet _timeSet;

  @override
  void initState() {
    _timeSet = new TimeSet(
      hour: DateTime.now().hour,
      minute: DateTime.now().minute,
      seconds: DateTime.now().second,
    );
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/background_3.jpg',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black,
              BlendMode.color,
            ),
            alignment: Alignment.center,
          ),
        ),
        child: ClockDisplay(timeSet: _timeSet ),
      ),
    );
  }

  void _getCurrentTime() {
    setState(
      () {
        _timeSet = new TimeSet(
          hour: DateTime.now().hour,
          minute: DateTime.now().minute,
          seconds: DateTime.now().second,
        );
      },
    );
  }
}
