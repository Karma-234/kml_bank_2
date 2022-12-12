import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view4.dart';
import 'package:kml_bank_2/features/onboarding/widgets/onboarding_scaffold.dart';

import '../../../../app_widgets/input_fields/k_input_field.dart';

class SignUpView3 extends StatelessWidget {
  SignUpView3({super.key});
  final ctrl = Get.put(UserController());
  final obscure = true.obs;
  void showPassword() {
    obscure.value = !obscure.value;
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      ctrl1: ctrl,
      header: 'Create a Password',
      body: 'Your password should be at least 8 characters long',
      active: () => ctrl.isActive3,
      onPressed: () => Get.to(() => SignUpView4()),
      childern: [
        Obx(
          () => KInputField(
            hide: obscure.value,
            onChanged: (p0) => ctrl.setPassword(p0),
            hint: 'Password',
            label: 'Password',
            suffixIcon: InkWell(
              onTap: () => showPassword(),
              child: Icon(
                obscure.value
                    ? Icons.remove_red_eye_sharp
                    : Icons.remove_red_eye_outlined,
                color: KColors.grey5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
