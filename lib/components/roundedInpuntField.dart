import 'package:flutter/material.dart';
import 'package:aglomeracao/constants.dart';

import 'TextFieldContainer.dart';

class RoundedInpuntField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInpuntField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            onChanged: onChanged,
            
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: kPrimaryColor,
              ),
              hintText: hintText,
              border: InputBorder.none,
            )));
  }
}
