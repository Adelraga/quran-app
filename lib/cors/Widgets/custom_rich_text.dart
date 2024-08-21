import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(children: [
        TextSpan(
          text: title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        TextSpan(
          text: value,
          style: TextStyle(
            color: Color.fromARGB(255, 198, 198, 198),
            fontSize: 17,
          ),
        ),
      ]),
    );
  }
}
