import 'package:aglomeracao/constants.dart';

import './components/body.dart';
import 'package:flutter/material.dart';

class IntroducaoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
