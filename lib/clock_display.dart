import 'package:flutter/material.dart';

import 'colon.dart';
import 'hour_minute.dart';
import 'seconds.dart';
import 'time_set.dart';

class ClockDisplay extends StatelessWidget {
  const ClockDisplay({
    Key key,
    @required TimeSet timeSet,
  })  : _timeSet = timeSet,
        super(key: key);

  final TimeSet _timeSet;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          //* Hour and Minute
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //* First Digit of Hour
              HourMinute(
                hourMinute: _timeSet.getFirstAny(_timeSet.getHour),
                xBoxOffset: -5,
                xFontOffeset: -5,
                color: Colors.blue,
              ),

              //* Second Digit of Hour
              Align(
                alignment: Alignment(-0.05, -0.05),
                child: HourMinute(
                  hourMinute: _timeSet.getSecondAny(_timeSet.getHour),
                  xBoxOffset: -8,
                  xFontOffeset: -4,
                  color: Colors.orange,
                ),
              ),

              //* :
              Align(
                alignment: Alignment(-0.1, -0.1),
                child: Colon(),
              ),

              //* First Digit of Minute
              Align(
                alignment: Alignment(-0.05, -0.05),
                child: HourMinute(
                  hourMinute: _timeSet.getFirstAny(_timeSet.getMinute),
                  xBoxOffset: -12,
                  xFontOffeset: -2,
                  color: Colors.green,
                ),
              ),

              //* Second Digit of Minute
              HourMinute(
                hourMinute: _timeSet.getSecondAny(_timeSet.getMinute),
                xBoxOffset: -13,
                xFontOffeset: -1,
                color: Colors.teal,
              ),
            ],
          ),

          //* Seconds
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //* Seconds first integer
              Seconds(
                second: _timeSet.getFirstAny(_timeSet.getSeconds),
                xBoxOffset: 0.36,
                yBoxOffset: 0.36,
                xFontOffeset: -3,
              ),

              //* Seconds second integer
              Seconds(
                second: _timeSet.getSecondAny(_timeSet.getSeconds),
                xBoxOffset: 0.35,
                yBoxOffset: 0.35,
                xFontOffeset: -5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

