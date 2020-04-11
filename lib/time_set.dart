import 'package:flutter/material.dart';

class TimeSet {
  final int hour;
  final int minute;
  final int seconds;

  TimeSet({@required this.hour,@required this.minute,@required this.seconds});

  String get getHour{
    return hour.toString().padLeft(2, '0');
  }

  String get getMinute{
    return minute.toString().padLeft(2, '0');
  }

  String get getSeconds{
    return seconds.toString().padLeft(2, '0');
  }

  String getFirstAny(String stringWithPadLeft){
    return stringWithPadLeft[0];
  }

  String getSecondAny(String stringWithPadLeft){
    return stringWithPadLeft[1];
  }
  
}