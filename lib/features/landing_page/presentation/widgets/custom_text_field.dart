import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({
    Key key, this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: OutlineInputBorder(), hintText: hintText),
    );
  }
}
