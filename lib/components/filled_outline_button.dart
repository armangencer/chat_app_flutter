import 'package:chat_app_flutter/constants.dart';
import 'package:flutter/material.dart';

class FilledOutlineButton extends StatelessWidget {
  const FilledOutlineButton(
      {super.key,
      this.isFilled = true,
      required this.text,
      required this.press});

  final bool isFilled;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(color: Colors.white),
      ),
      onPressed: press,
      color: isFilled ? Colors.white : Colors.transparent,
      elevation: isFilled ? 4 : 0,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: isFilled ? aContentColorLightTheme : Colors.white,
        ),
      ),
    );
  }
}
