
import 'package:aglomeracao/screens/Introducao/introducao_screen.dart';
import 'package:aglomeracao/screens/sobre/sobre_screen.dart';

import 'home_page.dart';
import './screens/home_page/home_page_screen.dart';
import './screens/login/login_screen.dart';
import './screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import './screens/balanco/balanco_screen.dart';




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
        '/' :(ctx)=>BalancoScreen(),
        '/sobre' :(ctx)=>SobreScreen(),
        '/introducao' :(ctx)=>IntroducaoScreen(),
        '/balanco' :(ctx)=>BalancoScreen(),
        '/login':(ctx)=> LoginScreen(),
        '/cadastra': (ctx)=> SignUpScreen(),
        '/homepage': (ctx)=> HomePageScreen(),
      },
    );
  }
}
