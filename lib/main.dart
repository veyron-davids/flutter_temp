import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/screens/one.dart';

import '../components/tabScreen.dart';


import 'providers/products.dart';
import 'providers/auth.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => Auth()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Title',
        theme:  theme(),
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          // PageOne.routeName: (context) => PageOne()
           "/": (context) => TabsScreen(),
          // ProductScreen.routeName: (ctx) => ProductScreen(),
          // CouplesScreen.routeName: (ctx) => CouplesScreen(),
          // DaelScreen.routeName: (ctx) => DaelScreen(),
          // MenScreen.routeName: (ctx) => MenScreen(),
          // ScripturesScreen.routeName: (ctx) => ScripturesScreen(),
          // TrendingScreen.routeName: (ctx) => TrendingScreen(),
          // UnisexScreen.routeName: (ctx) => UnisexScreen(),
          // VogueScreen.routeName: (ctx) => VogueScreen(),
        },
      ),
    );
  }
}
