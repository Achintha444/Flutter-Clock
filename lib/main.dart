import 'package:flutter/material.dart';

import 'clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLOCK',
      theme: ThemeData(
        fontFamily: 'BowlbyOneSC',
        primaryColor: Colors.black,
      ),
      home: Clock(),
    );
  }
}
