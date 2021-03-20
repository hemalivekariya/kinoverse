import 'package:flutter/material.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/common/StringRes.dart';

class HireSignUp extends StatefulWidget {
  @override
  _HireSignUpState createState() => _HireSignUpState();
}

class _HireSignUpState extends State<HireSignUp> {
  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
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
              SizedBox(height: 25,),
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(border: Border.all(color: btnColor,width: 1),),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Text(StringRes.completeFreeAccountSetup),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
