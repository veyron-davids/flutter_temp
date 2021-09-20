import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "VEYRON",
          style: TextStyle(
            fontSize: 30,
            color: veyronColorPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
         SizedBox(height: 15,),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: 200,
          width: 200,
        //  color: veyronColorPrimary,
        ),
      ],
    );
  }
}
