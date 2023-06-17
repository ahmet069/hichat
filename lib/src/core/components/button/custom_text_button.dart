import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String content;
  final Color? textColor;
  final Color? overlayColor;
  final double fontSize;
  final double? width;
  final Alignment? alignment;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.fontSize,
    required this.content,
    this.textColor,
    this.alignment,
    this.width,
    this.overlayColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(overlayColor),
      ),
      onPressed: onPressed,
      child: Container(
        width: width ?? .5.sw,
        alignment: alignment ?? Alignment.centerLeft,
        child: Text(
          content,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
