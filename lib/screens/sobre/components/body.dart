import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';

import 'backgroud.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 280,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: 310,
                child: Text(
                  'Nos ajude no \ncombate ao \ncovid-19, denuncie aglomerações ',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: kPrimaryColor,
                    
                ),
              ),
            ),
            ),
            SizedBox(height:60),
            RoundedButton(
              text: 'Proximo Passo',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
