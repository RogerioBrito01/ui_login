// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ButtonCustomized extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  Color color;

  ButtonStyle style;
  ButtonCustomized({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      width: double.infinity,
      child: ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 24),
            )),
      ),
    );
  }
}
