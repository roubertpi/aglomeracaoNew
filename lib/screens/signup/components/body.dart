import 'package:aglomeracao/api/api_denuncia.dart';
import 'package:aglomeracao/components/roundedInpuntField.dart';
import 'package:aglomeracao/components/roundedPasswordField%20.dart';
import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';
import 'package:aglomeracao/model/cadastrar_model.dart';
import 'package:aglomeracao/model/login_model.dart';
import 'package:aglomeracao/screens/login/login_screen.dart';
import 'package:aglomeracao/screens/signup/components/or_divider.dart';
import 'package:aglomeracao/screens/signup/components/social_icon.dart';
import 'package:aglomeracao/components/already_have_an_account_acheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  CadastrarRequestModel cadastrarRequestModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cadastrarRequestModel = new CadastrarRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Aglomeração",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(height: size.height * 0.2),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              alignment: Alignment.topLeft,
              child: Text(
                "Criar Sua Conta",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            ),
            RoundedInpuntField(
                hintText: "Nome",
                onChanged: (value) => cadastrarRequestModel.nome = value),
            RoundedInpuntField(
              hintText: "Seu Email",
              onChanged: (value) => cadastrarRequestModel.email = value,
            ),
            RoundedPasswordField(
              senha: "Senha",
              onChanged: (value) => cadastrarRequestModel.senha = value,
            ),
            RoundedPasswordField(
              senha: "Confirme sua senha",
              onChanged: (value) => cadastrarRequestModel.confirmaSenha = value,
            ),
            RoundedButton(
              text: "Cadastrar",
              press: () {
                print(cadastrarRequestModel.email);
                print(cadastrarRequestModel.nome);
                print(cadastrarRequestModel.senha);
                print(cadastrarRequestModel.confirmaSenha);
                
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
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
