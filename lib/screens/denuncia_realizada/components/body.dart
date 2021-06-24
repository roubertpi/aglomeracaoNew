import 'package:aglomeracao/components/rounded_button.dart';

import 'background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 450,
            ),
            Text(
              'Denúncia realizada',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sua colaboração nos ajuda no \ncombate ao corona virús',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            RoundedButton(
              text: 'Minhas dúnuncias',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
