import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kinoverse/app.dart';
import 'package:kinoverse/model/slider_item.dart';

import 'LandingPageModel.dart';

class LandingPage extends StatefulWidget {
  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  LandingPageViewModel model;

  @override
  Widget build(BuildContext context) {
    print("runtimeType -> " + runtimeType.toString());
    model ?? (model = LandingPageViewModel(this));

    return Scaffold(
      bottomNavigationBar: buttonRow(),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Image.asset(
                  App.logo,
                ),
              ),
              Expanded(
                child: Swiper(
                  autoplayDelay: 7000,
                  autoplayDisableOnInteraction: true,
                  autoplay: true,
                  duration: 3000,
                  loop: false,
                  physics: BouncingScrollPhysics(),
                  itemCount: listSlide.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? MediaQuery.of(context).size.height * 0.4
                                : MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              model.image[index],
                              width: 500,
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            model.title[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              //fontFamily: App.font_name,

                              //  fontFamily: App.font_name1,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            model.subTitle[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,

                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  // pagination: SwiperPagination(margin: new EdgeInsets.all(5.0),
                  // ),
                  pagination: new SwiperPagination(
                    margin: EdgeInsets.only(top: 16),
                    builder: new DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: btnColor,
                      activeSize: 10.0,
                    ),
                  ),
                ),
              ),
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
      height: MediaQuery.of(context).size.height / 10.0,
      child: Column(
        children: [
          loginButton(),
          Button(),
        ],
      ),
    );
  }

// =====================       LOGIN BUTTON        ========================

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
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  Widget Button() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // CommonRoutePage().gotoSignUpPage(context);
        },
        child: Center(
          child: Text(
            'New to the Kinoverse? Sign Up',
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
