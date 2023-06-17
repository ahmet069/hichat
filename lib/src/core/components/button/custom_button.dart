import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/color_tones.dart';

class CustomButton extends StatelessWidget {
  final String content;
  final void Function() onPressed;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? contentColor;
  final double? borderRadius;
  final double? fontSize;

  const CustomButton({
    super.key,
    required this.content,
    required this.onPressed,
    this.borderRadius,
    this.contentColor,
    this.backgroundColor,
    this.height,
    this.width,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorTones.primaryBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
      ),
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: width ?? .8.sw,
        height: height ?? 54,
        child: Text(
          content,
          style: TextStyle(
            color: contentColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
