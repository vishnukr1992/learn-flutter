import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(this.text, this.size, this.color, {super.key});

  const AppText.extraSmallDarkText(this.text, {super.key})
      : size = 8,
        color = Colors.black87;
  const AppText.smallDarkText(this.text, {super.key})
      : size = 10,
        color = Colors.black87;
  const AppText.normalDarkText(this.text, {super.key})
      : size = 12,
        color = Colors.black87;
  const AppText.largeDarkText(this.text, {super.key})
      : size = 18,
        color = Colors.black87;
  const AppText.extraLargeDarkText(this.text, {super.key})
      : size = 25,
        color = Colors.black87;

  final String text;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black87,
        fontSize: size ?? 12,
      ),
    );
  }
}
