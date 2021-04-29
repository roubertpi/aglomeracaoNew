import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopForWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Card(
              color: Colors.transparent,
              child: Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("São Cristovão"),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              child: Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("São Cristovão"),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Card(
              color: Colors.transparent,
              child: Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("São Cristovão"),
                ),
              ),
            ),
            Card(
              color: Colors.transparent,
              child: Container(
                height: 60,
                width: 130,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("São Cristovão"),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
