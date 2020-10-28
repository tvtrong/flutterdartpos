import 'package:flutter/material.dart';
import 'package:pos/Screens/Login/login_screen.dart';
import 'package:pos/Screens/Welcome/components/background.dart';
import 'package:pos/components/rounded_button.dart';
import 'package:pos/constants.dart';
import 'package:pos/size_config.dart';
import 'package:pos/Screens/Welcome/components/splash_content.dart';

//DateTime now = DateTime.now();
//String convertedDateTime = "${now.year.toString()}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')} ${now.hour.toString()}:${now.minute.toString()}:${now.second.toString()}";
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "", "image": "assets/icons/logo.svg"},
    {"text": "", "image": "assets/icons/logo.svg"},
    {"text": "", "image": "assets/icons/logo.svg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 3,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.05,
                    ),
                    RoundedButton(
                      text: "Login",
                      color: greenColor,
                      press: () {
                        Navigator.pushNamed(
                          context,
                          LoginScreen.routeName
                        );
                      },
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.03,
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

  //Widget build(BuildContext context) {
  //  Size size = MediaQuery.of(context).size;
  //  // this size provide us height and width of our screen
  //  return Background(
  //    child: SingleChildScrollView(
  //      child: Column(
  //        mainAxisAlignment: MainAxisAlignment.center,
  //        children: <Widget>[
  //          SizedBox(
  //            height: size.height * 0.01,
  //          ),
  //          Text(
  //            "welcome",
  //            style: TextStyle(
  //              //fontWeight: FontWeight.bold,
  //              fontSize: getProportionateScreenWidth(20),
  //              fontFamily: "VNI-Duff",
  //              color: lightOrangeColor,
  //            ),
  //          ),
  //          SizedBox(
  //            height: size.height * 0.03,
  //          ),
  //          SvgPicture.asset(
  //            "assets/icons/logo.svg",
  //            height: SizeConfig.screenHeight * 0.65,
  //          ),
  //          SizedBox(
  //            height: size.height * 0.05,
  //          ),
  //          Row(
  //            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //            children: <Widget>[
  //              RoundedButton(
  //                text: "Login",
  //                color: greenColor,
  //                press: () {
  //                  Navigator.pushNamed(
  //                    context,
  //                    LoginScreen.routeName
  //                  );
  //                },
  //              ),
  //              RoundedButton(
  //                text: "Signup",
  //                color: greenColor,
  //                press: () {
  //                  Navigator.push(
  //                    context,
  //                    MaterialPageRoute(builder: (context) {
  //                      return SignUpScreen();
  //                    }),
  //                  );
  //                },
  //              ),
  //            ],
  //          ),
  //          SizedBox(
  //            height: SizeConfig.screenHeight * 0.05,
  //          ),
  //        ],
  //      ),
  //    ),
  //  );
  //}



  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 13,
      width: currentPage == index ? 79 : 13,
      decoration: BoxDecoration(
        color: currentPage == index ? yellowColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}
