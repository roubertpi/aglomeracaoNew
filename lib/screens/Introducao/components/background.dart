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

            top: 180,
            left: 0,
            child: Image.asset(
              "assets/images/Elipse2.png",
             
              width: size.width * 1,
            ),
          ),
          
          Positioned(
            top: 200,
            left: 35,
            child: Image.asset(
              "assets/images/aglormeracao.png",
             
              width: size.width * 0.7,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
