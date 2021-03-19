import 'package:flutter/material.dart';
import 'package:kinoverse/Page/sign_up/sign_up_model.dart';
import 'package:kinoverse/app.dart';

class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  SignUpViewModel model;

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    model ?? (model = SignUpViewModel(this));

    return Scaffold(

      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 60),
          child: Column(
           // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Image.asset(
                  App.logo,
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              buttonRow(),

            ],
          ),
        ),
      ),
    );
  }

// =====================       BOTTOM ROW OF BUTTON        ========================

  Widget buttonRow() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: MediaQuery.of(context).size.height / 3.0,
      child: Column(
        children: [
          newText(),
          loginButton(),

        ],
      ),
    );
  }


  Widget loginButton() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // CommonRoutePage().gotoSignUpPage(context);
        },
        child: Container(
          height: 35,
          decoration: BoxDecoration(
            color: btnColor,
          ),
          child: Center(
            child: Text(
              'Continue with Email',
              style: TextStyle(
                  color: txtColor, fontSize: 12, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  Widget newText() {
    return Column(
      children: [
        Text(
          'Get your free account',
          style: TextStyle(
            color: txtColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          //height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: btnColor)),
            onPressed: () {},
            padding: EdgeInsets.all(10.0),
            color: bgColor,
            textColor: txtColor,
            child: Text("Continue with Google",
                style: TextStyle(fontSize: 12,   fontWeight: FontWeight.w700,)),
          ),
        ),
        Text(
          'or',
          style: TextStyle(
            color: txtColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          //height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
                side: BorderSide(color: btnBorderWhite)),
            onPressed: () {},
            padding: EdgeInsets.all(10.0),
            color: bgColor,
            textColor: txtDescriptionColor,
            child: Text("Work email address",
                style: TextStyle(fontSize: 12,   fontWeight: FontWeight.w400,)),
          ),
        ),

      ],
    );
  }


}
