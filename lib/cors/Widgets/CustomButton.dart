
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.title,
      required this.textColor,
      required this.buttonColor,
      this.borderRadius,
      this.onPressed,
      this.height,
      this.width});
  final String title;
  final Color textColor;
  final Color buttonColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: height,
        width: width,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
