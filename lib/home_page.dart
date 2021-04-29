import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = ['Minhas \n denúncias', 'Locais de \n vacina'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF3EFF9),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: [
            Text('Aglomeração'),
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset('assets/images/Elipse1.png'))
          ],
        ),
      ),
    );
  }
}
