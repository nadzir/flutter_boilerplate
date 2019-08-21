import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: AfterSplash(),
        image: Image.asset("assets/icon/icon.png"),
        loaderColor: Colors.blue,
        backgroundColor: Colors.white,
        photoSize: 100,
      ),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Flutter boilerplate'),
    );
  }
}

