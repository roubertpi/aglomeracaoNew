import 'package:flutter/material.dart';

import 'package:aglomeracao/api/auth.dart';
import 'package:aglomeracao/components/RoundedInpuntField.dart';
import 'package:aglomeracao/components/RoundedPasswordField%20.dart';
import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';
import 'package:aglomeracao/model/login_model.dart';
import 'package:aglomeracao/components/already_have_an_account_acheck.dart';
import 'package:aglomeracao/components/backgroud_virus.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Aglomeração',
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
                fontSize: 28),
          ),

          //* imagem
          //
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInpuntField(
            hintText: "Seu Email",
            onChanged: (value) => loginRequestModel.email = value,
          ),
          RoundedPasswordField(
            onChanged: (value) => loginRequestModel.password = value,
          ),
          RoundedButton(
            text: "Login",
            press: () async {
              await Provider.of<Auth>(context, listen: false)
                  .login(loginRequestModel);
              _isLoading = true;

              // Navigator.of(context).pushNamed('/homepage', arguments: {});
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.of(context).pushNamed('/cadastra', arguments: {});
            },
          )
        ],
      ),
    ));
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
