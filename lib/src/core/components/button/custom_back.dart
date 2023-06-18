// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../main.dart';
import '../../constants/app_constants.dart';
import '../../theme/color_tones.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      child: ElevatedButton(
        onPressed: () async {
          router.navigateBack();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white, elevation: 0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorTones.lightBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: SvgPicture.asset(
                  ApplicationConstants.leftIcon,
                  color: ColorTones.primaryBlue,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                'Back',
                style: TextStyle(
                  color: ColorTones.primaryBlue,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
