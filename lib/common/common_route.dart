import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoverse/Page/sign_up/sign_up.dart';

class CommonRoutePage {
  navigatorPop(BuildContext context) {
    Navigator.pop(context);
  }

  gotoSignUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUp(),
      ),
    );
  }
  goToScreen(BuildContext context,screen){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

}
