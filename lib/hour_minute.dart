import 'package:flutter/material.dart';

class HourMinute extends StatelessWidget {
  const HourMinute({
    Key key,
    @required String hourMinute,
    @required double xBoxOffset,
    @required double xFontOffeset,
    @required Color color,
  })  : _hourMinute = hourMinute,
        _xBoxOffset = xBoxOffset,
        _xFontOffeset = xFontOffeset,
        _color = color,
        super(key: key);

  final String _hourMinute;
  final double _xBoxOffset;
  final double _xFontOffeset;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width / 5.5,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.96),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/background_3.jpg'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: _color.withOpacity(0.3),
              blurRadius: 0,
              offset: Offset(_xBoxOffset, 5),
            ),
            BoxShadow(
              color: _color.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(_xBoxOffset, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            _hourMinute,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 80,
                shadows: [
                  Shadow(
                    color: _color.withOpacity(0.9),
                    blurRadius: 0,
                    offset: Offset(_xFontOffeset, 5),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
