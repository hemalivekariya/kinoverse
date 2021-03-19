import 'package:flutter/material.dart';

bool isLight = true;

class App {

  static const font1 = "Courier Prime";
  static const font2 = "Ubuntu";

  static const root = 'assets/image/';
  static const logo = '$root' + 'logo.png';
  static const landing1 = '$root' + 'landing1.png';
  static const landing2 = '$root' + 'landing2.jpg';
  static const landing3 = '$root' + 'landing3.jpg';

  static Route createRoute({Widget page}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastLinearToSlowEaseIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}



getColorIcon() {
  if (isLight) {
    return getColorPrimary();
  } else {
    return Colors.white;
  }
}

getColorBg() {
  if (isLight) {
    return Color(0x00ffFFF9F9);
  } else {
    return Color(0x00ffFFF9F9);
  }
}

getMatColorBg() {
  if (isLight) {
    return Colors.white;
  } else {
    return Colors.white;
  }
}

Color bgColor = Color(0x00ff3E4346);
Color btnColor = Color(0x00ffA60000);
Color txtColor = Color(0x00ffF5F5F5);
Color txtDescriptionColor = Color(0x00ff929292);
Color colorWhite = Color(0x00ffF7F7FA);
Color btnBorderWhite = Color(0x00ff929292);

Color colorBrown = Colors.brown;
Color colorTextPara = Color(0x00ff73777F);
Color colorAppSignUp = Color.fromRGBO(94, 93, 200, 1);
Color colorBgTextField = Color.fromRGBO(245, 245, 245, 1);
Color colorAppTheme = Color.fromRGBO(58, 77, 219, 1);
Color colorBlack = Color(0x00ff000000);
Color colorSelectedMenu = Colors.green[300];
Map<int, Color> colorMat = {
  50: Color.fromRGBO(65, 20, 139, .1),
  100: Color.fromRGBO(65, 20, 139, .2),
  200: Color.fromRGBO(65, 20, 139, .3),
  300: Color.fromRGBO(65, 20, 139, .4),
  400: Color.fromRGBO(65, 20, 139, .5),
  500: Color.fromRGBO(65, 20, 139, .6),
  600: Color.fromRGBO(65, 20, 139, .7),
  700: Color.fromRGBO(65, 20, 139, .8),
  800: Color.fromRGBO(65, 20, 139, .9),
  900: Color.fromRGBO(65, 20, 139, 1),
};

getColorPrimary() {
  if (isLight) {
    return MaterialColor(0x00ff3E4346, colorMat);
  } else {
    return Colors.green;
  }
}

getColorBorder() {
  if (isLight) {
    return Colors.green;
  } else {
    return Colors.green;
  }
}


