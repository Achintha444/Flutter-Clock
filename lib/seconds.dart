import 'package:flutter/material.dart';

class Seconds extends StatelessWidget {
  const Seconds(
      {Key key,
      @required String second,
      @required double xBoxOffset,
      @required double yBoxOffset,
      @required double xFontOffeset})
      : _second = second,
        _xBoxOffset = xBoxOffset,
        _yBoxOffset = yBoxOffset,
        _xFontOffeset = xFontOffeset,
        super(key: key);

  final String _second;
  final double _xBoxOffset;
  final double _yBoxOffset;
  final double _xFontOffeset;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(_xBoxOffset, _yBoxOffset),
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.96),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/background_3.jpg'),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.5),
                blurRadius: 0,
                offset: Offset(_xFontOffeset, 5),
              ),
              BoxShadow(
                color: Colors.pink.withOpacity(0.5),
                blurRadius: 15,
                offset: Offset(_xFontOffeset, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              _second,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: Colors.pink.withOpacity(0.9),
                      blurRadius: 0,
                      offset: Offset(-3, 3),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
