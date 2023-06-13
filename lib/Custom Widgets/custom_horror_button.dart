import 'package:fate/constant.dart';
import 'package:flutter/material.dart';

class CustomHorrorButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String buttonTitle;
  const CustomHorrorButton(
      {super.key, required this.onPressed, required this.buttonTitle});

  @override
  State<CustomHorrorButton> createState() => _CustomHorrorButtonState();
}

class _CustomHorrorButtonState extends State<CustomHorrorButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Ink(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.red.shade700,
              Colors.red.shade600,
              Colors.red.shade900
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          // constraints: const BoxConstraints(minWidth: 88.0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              widget.buttonTitle,
              style: kSize20,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
