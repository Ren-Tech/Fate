import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final Function() onPressed;
  final String buttonTitle;
  final Color buttonColor;
  const CustomTextButton(
      {super.key,
      required this.onPressed,
      required this.buttonTitle,
      required this.buttonColor});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonTitle,
        style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontFamily: 'Creepster',
            color: widget.buttonColor),
      ),
    );
  }
}
