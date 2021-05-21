import 'package:aglomeracao/api/api_service.dart';
import 'package:aglomeracao/components/RoundedInpuntField.dart';
import 'package:aglomeracao/components/RoundedPasswordField%20.dart';
import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';
import 'package:aglomeracao/model/login_model.dart';
import 'package:aglomeracao/components/already_have_an_account_acheck.dart';
import 'package:aglomeracao/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
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
            press: () {
              ApiService apiService = new ApiService();
              apiService.login(loginRequestModel).then((value) {
                if (value != null) {
                  print('value');
                  if (value.token.isNotEmpty) {
                    Navigator.of(context).pushNamed('/homepage', arguments: {});
                  } else {
                    print('erro');
                  }
                }
              });

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
