import 'package:flutter/material.dart';
import 'package:food_app/pages/tips/getStart.dart';
import 'package:food_app/pages/tips/tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:food_app/pages/config.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new GetStart(),
      title: new Text(
        ' مرحبا بكم في تطبيق مطعمنا ',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,color: Colors.white),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: primaryColor,
      photoSize: 100.0,
      onClick: ()=> print("Restaurant"),
      loaderColor: Colors.green,
    );
  }
}

