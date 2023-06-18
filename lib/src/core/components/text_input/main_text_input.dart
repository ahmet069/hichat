// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../theme/color_tones.dart';

// class MainTextInput extends StatelessWidget {
//   final String placeHolder;
//   final double? width;
//   final Color? borderColor;
//   final Color? cursorColor;
//   final bool? isPassword;
//   final double? borderRadius;
//   final TextEditingController textEditingController;

//   const MainTextInput({
//     super.key,
//     required this.placeHolder,
//     required this.textEditingController,
//     this.width,
//     this.borderColor,
//     this.cursorColor,
//     this.borderRadius,
//     this.isPassword,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final _obscureText = isPassword ?? false;
//     return Container(
//       width: width ?? .8.sw,
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       height: 54,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(borderRadius ?? 0),
//         border: Border.all(
//           width: 1,
//           color: Colors.grey,
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Row(
//           children: [
//             Container(
//               width: .7.sw - 40,
//               child: TextField(
//                 obscureText: true,
//                 cursorColor: cursorColor ?? ColorTones.primaryBlue,
//                 decoration: InputDecoration(
//                   hintText: placeHolder,
//                   fillColor: ColorTones.grayText,
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                     child: Icon(
//                       _obscureText ? Icons.visibility : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/color_tones.dart';

class MainTextInput extends StatefulWidget {
  final String placeHolder;
  final double? width;
  final Color? borderColor;
  final Color? cursorColor;
  final bool? isPassword;
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
    this.isPassword,
  });

  @override
  State<MainTextInput> createState() => _MainTextInputState();
}

class _MainTextInputState extends State<MainTextInput> {
  late bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.isPassword ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? .8.sw,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 54,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          child: TextField(
            obscureText: obscureText,
            cursorColor: widget.cursorColor ?? ColorTones.primaryBlue,
            decoration: InputDecoration(
              hintText: widget.placeHolder,
              border: InputBorder.none, // remove underline
              fillColor: ColorTones.grayText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: _isPasswordIcon(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _isPasswordIcon() {
    if (widget.isPassword == true) {
      return Icon(
        obscureText ? Icons.visibility : Icons.visibility_off,
      );
    } else {
      return Container(
        width: 0,
      );
    }
  }
}
