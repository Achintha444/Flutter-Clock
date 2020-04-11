import 'package:flutter/material.dart';

class Colon extends StatelessWidget {
  const Colon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width / 6,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.96),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('assets/background_3.jpg'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              blurRadius: 0,
              offset: Offset(-11, 5),
            ),
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(-11, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            ":",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 80,
                shadows: [
                  Shadow(
                    color: Colors.purple.withOpacity(0.9),
                    blurRadius: 0,
                    offset: Offset(-3, 5),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

