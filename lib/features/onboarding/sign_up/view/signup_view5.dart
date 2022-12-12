import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/sign_up_view6.dart';
import 'package:kml_bank_2/features/onboarding/widgets/onboarding_scaffold.dart';
import 'package:pinput/pinput.dart';

class SignUpView5 extends StatelessWidget {
  SignUpView5({super.key});
  final ctrl = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      ctrl1: ctrl,
      header: 'Create a Passcode',
      body: 'Create a passcode to sign in to your account securely. ',
      active: () => ctrl.isActive5,
      onPressed: () {
        Get.to(() => const SignUpView6());
      },
      childern: [
        Pinput(
          length: 4,
          obscureText: true,
          onCompleted: (value) => ctrl.setPassCode(value),
        ),
      ],
    );
  }
}
