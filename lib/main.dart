import 'package:flutter/material.dart';
import 'package:kinoverse/Page/landing_page/landing_page.dart';
import 'app.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: App.font1,
        ),
        home: LandingPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
