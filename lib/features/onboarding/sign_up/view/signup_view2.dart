import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view1.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view3.dart';
import 'package:pinput/pinput.dart';

import '../../widgets/onboarding_scaffold.dart';

class SignUpView2 extends StatelessWidget {
  SignUpView2({super.key});
  final ctrl = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      ctrl1: ctrl,
      header: 'Enter your OTP',
      body:
          'Please enter the 6-digit code we just sent to ${(ctrl.country.value.dialCode! + ctrl.phoneNumber.value)}. This device will be linked to your account.',
      active: () => ctrl.isActive2,
      onPressed: () => Get.to(() => SignUpView3()),
      childern: [
        Pinput(
          length: 6,
          onCompleted: (value) =>
              value.isNotEmpty ? ctrl.setOtp(value) : 'Invalid OTP',
          onChanged: (value) {
            ctrl.setOtp(value);
          },
        )
      ],
    );
  }
}
