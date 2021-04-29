import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:aglomeracao/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem Vindo',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            //* SvgPicuture.assent("")
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: "Login",
                press: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (contex) {
                      return LoginScreen();
                    }, 
                  ));
                }),
            RoundedButton(
              text: "Cadastrar",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
              },
            )
          ],
        ),
      ),
    );
  }
}
