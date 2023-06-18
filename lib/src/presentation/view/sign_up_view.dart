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

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _userMail = TextEditingController();
  final TextEditingController _userPassword = TextEditingController();
  final TextEditingController _userPasswordConfirm = TextEditingController();

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
        CustomBackButton(),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.white,
      width: 1.sw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _signUpForm(),
          Column(
            children: [
              CustomButton(
                content: 'Sign Up',
                onPressed: () {},
                borderRadius: 8,
                width: .73.sw,
              ),
              _bottomText(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _signUpForm() {
    return Container(
      width: 1.sw,
      child: Column(
        children: [
          const MainTitle(
            content: 'HiChat',
            fontSize: 60,
          ),
          const SizedBox(
            height: 40,
          ),
          _emailTextField(),
          const SizedBox(height: 18),
          _passwordTextField(),
          const SizedBox(height: 18),
          _confirmPasswordTextField(),
          const SizedBox(height: 18),
        ],
      ),
    );
  }

  Widget _emailTextField() {
    return MainTextInput(
      placeHolder: 'E-mail',
      textEditingController: _userMail,
      borderRadius: 8,
    );
  }

  Widget _passwordTextField() {
    return MainTextInput(
      placeHolder: 'Password',
      textEditingController: _userPassword,
      borderRadius: 8,
      isPassword: true,
    );
  }

  Widget _confirmPasswordTextField() {
    return MainTextInput(
      placeHolder: 'Confirm password',
      textEditingController: _userPasswordConfirm,
      borderRadius: 8,
      isPassword: true,
    );
  }

  Widget _bottomText() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Text(
            "Already have an account ?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorTones.primaryText,
            ),
          ),
          CustomTextButton(
            onPressed: () async {
              router.navigateBack();
            },
            fontSize: 14,
            content: 'Sign In Here',
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}
