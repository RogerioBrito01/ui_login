// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFormFildcustomized extends StatelessWidget {
  Color color;
  Color fillColor;
  String text;
  InputBorder border;
  Widget prefix;
  TextInputType? keyboardType;
  bool obscureText;

  TextEditingController controller;
  TextFormFildcustomized({
    Key? key,
    required this.color,
    required this.fillColor,
    required this.text,
    required this.border,
    required this.prefix,
    this.keyboardType,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            border: border,
            hintText: text,
            filled: true,
            fillColor: fillColor,
            prefix: prefix),
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
