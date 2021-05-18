import '../../constants.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';

class DenunciarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Denunciar'),
      ),
      body: Body(),
      backgroundColor: kPrimaryLightColor,
    );
  }
}
