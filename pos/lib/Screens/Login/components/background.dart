import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key, 
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.01), BlendMode.dstATop)
        ),
      ),
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          //Positioned(
          //  top: 0,
          //  left: 0,
          //  child: Image.asset(
          //    "assets/images/main_top.png",
          //    width: size.width * 0.356,
          //  ),
          //),
          //Positioned(
          //  bottom: 0,
          //  right: 0,
          //  child: Image.asset(
          //    "assets/images/login_bottom.png",
          //    width: size.width * 0.356,
          //  ),
          //),
          child,
        ],
      )
    );
  }
}
