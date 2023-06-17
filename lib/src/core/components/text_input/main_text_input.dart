import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/color_tones.dart';

class MainTextInput extends StatelessWidget {
  final String placeHolder;
  final double? width;
  final Color? borderColor;
  final Color? cursorColor;
  final double? borderRadius;
  final TextEditingController textEditingController;

  const MainTextInput({
    super.key,
    required this.placeHolder,
    required this.textEditingController,
    this.width,
    this.borderColor,
    this.cursorColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? .8.sw,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 54,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextField(
          cursorColor: cursorColor ?? ColorTones.primaryBlue,
          decoration: InputDecoration.collapsed(
            hintText: placeHolder,
            fillColor: ColorTones.grayText,
          ),
        ),
      ),
    );
  }
}
