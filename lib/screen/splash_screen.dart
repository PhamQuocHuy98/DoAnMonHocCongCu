import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 150),
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Text(
              "MOVIE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: "Poppins-Bold",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ".",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 36,
                  fontFamily: "Poppins-Bold",
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
