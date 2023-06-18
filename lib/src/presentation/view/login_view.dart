import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../main.dart';
import '../../config/router/app_router.dart';
import '../../core/components/button/custom_back.dart';
import '../../core/components/button/custom_button.dart';
import '../../core/components/button/custom_text_button.dart';
import '../../core/components/text/main_title.dart';
import '../../core/components/text_input/main_text_input.dart';
import '../../core/theme/color_tones.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _userMail = TextEditingController();
  final TextEditingController _userPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: const [
        // CustomBackButton(),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      width: 1.sw,
      child: Container(
        width: 1.sw,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _formBuilder(),
            Column(
              children: [
                CustomButton(
                  content: 'Sign In',
                  onPressed: () {},
                  borderRadius: 10,
                  width: .8.sw,
                ),
                _bottomText(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _formBuilder() {
    return Column(
      children: [
        const MainTitle(
          content: 'HiChat',
          fontSize: 60,
        ),
        const SizedBox(
          height: 40,
        ),
        MainTextInput(
          cursorColor: Colors.red,
          placeHolder: 'Enter your mail adress',
          borderRadius: 8,
          textEditingController: _userMail,
        ),
        const SizedBox(
          height: 18,
        ),
        MainTextInput(
          placeHolder: 'Enter your password',
          borderRadius: 8,
          cursorColor: Colors.red,
          textEditingController: _userPassword,
          isPassword: true,
        ),
        CustomTextButton(
          onPressed: () async {
            await router.navigate(const ForgotPasswordRouter());
          },
          fontSize: 15,
          content: 'Forgot password ?',
          textColor: ColorTones.primaryText,
          alignment: Alignment.centerLeft,
          width: .79.sw,
          overlayColor: const Color.fromARGB(255, 244, 244, 244),
        )
      ],
    );
  }

  Widget _bottomText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Text(
            "Don't you have an account yet ?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorTones.primaryText,
            ),
          ),
          CustomTextButton(
            onPressed: () async {
              await router.push(const SignUpRouter());
            },
            fontSize: 14,
            content: 'Sign Up Here',
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
