import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopForWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            topForItem('Jardim America'),
            topForItem('Calhau'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            topForItem('Turu'),
            topForItem('São Cristovão'),
          ],
        ),
      ],
    );
  }

  Container topForItem(String local) {
    return Container(
      height: 60,
      width: 130,
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 1)
          ]),
      child: Center(
        child: Text(
          local,
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
