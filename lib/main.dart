import 'package:flutter/material.dart';

import 'clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'BowlbyOneSC',
      ),
      home: Clock(),
    );
  }
}
