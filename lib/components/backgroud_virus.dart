import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 200,
            left: 0,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset(
                "assets/images/v1.png",
                //width: size.width * 1,
                scale: 0.45,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 120,
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                "assets/images/v2.png",
                scale: 0.44,
                width: size.width * 1,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
