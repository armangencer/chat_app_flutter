import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.text,
      required this.press,
      required this.padding,
      required this.color});

  final String text;
  final VoidCallback press;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      onPressed: press,
      padding: padding,
      color: color,
      minWidth: double.infinity,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
