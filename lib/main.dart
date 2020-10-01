import 'package:flutter/material.dart';
import 'package:flutter_dev/constant.dart';
import 'package:flutter_dev/screens/home/home_screen.dart';
import 'package:flutter_dev/splash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext) => HomeScreen(),
      },
    );
  }
}
