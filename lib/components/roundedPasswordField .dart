import 'package:aglomeracao/components/textFieldContainer.dart';
import 'package:aglomeracao/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String senha;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.senha,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: senha,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffix: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
