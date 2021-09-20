import 'package:flutter/material.dart';
import 'package:template/components/tabScreen.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       title: Text("Home"),
        ),
    );
  }
}
