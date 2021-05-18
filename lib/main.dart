import 'package:flutter/material.dart';

import './screens/home_page/home_page_screen.dart';
import './screens/login/login_screen.dart';
import './screens/signup/signup_screen.dart';
import './screens/balanco/balanco_screen.dart';
import './screens/denuncia_realizada/denuncia_realizada.dart';
import './screens/sobre/sobre_screen.dart';
import './screens/Introducao/introducao_screen.dart';
import './screens/denuncia/denunciar_screen.dart';
import 'screens/minhas_denuncias/minhas _denuncias.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      initialRoute: '/',
      //falta aqui

      routes: {
        '/': (ctx) => IntroducaoScreen(),
        '/minhasdenuncias': (ctx) => DenunciaRealizada(),
        '/denunciar': (ctx) => DenunciarScreen(),
        '/sobre': (ctx) => SobreScreen(),
        '/introducao': (ctx) => IntroducaoScreen(),
        '/balanco': (ctx) => BalancoScreen(),
        '/login': (ctx) => LoginScreen(),
        '/cadastra': (ctx) => SignUpScreen(),
        '/homepage': (ctx) => HomePageScreen(),
      },
    );
  }
}
