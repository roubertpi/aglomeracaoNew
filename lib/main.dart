import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './api/api_denuncia.dart';
import './api/auth.dart';
import './screens/home_page/home_page_screen.dart';
import './screens/login/login_screen.dart';
import './screens/signup/signup_screen.dart';
import './screens/balanco/balanco_screen.dart';
import './screens/denuncia_realizada/denuncia_realizada.dart';
import './screens/sobre/sobre_screen.dart';
import './screens/Introducao/introducao_screen.dart';
import './screens/denuncia/denunciar_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, ApiDenuncia>(
          update: (ctx, auth, _) => ApiDenuncia(auth.token),
        )
      ],
      child: Consumer<Auth>(
        builder: (ctx, authData, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Auth',
          home: authData.isAuth
              ? HomePageScreen()
              : FutureBuilder(
                  future: authData.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : LoginScreen(),
                ),
          //falta aqui

          routes: {
            '/minhasdenuncias': (ctx) => DenunciaRealizada(),
            '/denunciar': (ctx) => DenunciarScreen(),
            '/sobre': (ctx) => SobreScreen(),
            '/introducao': (ctx) => IntroducaoScreen(),
            '/balanco': (ctx) => BalancoScreen(),
            '/login': (ctx) => LoginScreen(),
            '/cadastra': (ctx) => SignUpScreen(),
            '/homepage': (ctx) => HomePageScreen(),
          },
        ),
      ),
    );
  }
}
