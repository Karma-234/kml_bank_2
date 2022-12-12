import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/app_widgets/texts/kheader_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view3.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view5.dart';
import 'package:kml_bank_2/features/onboarding/widgets/onboarding_scaffold.dart';

import '../../../../app_widgets/input_fields/dropdown_field.dart';
import '../../../../app_widgets/input_fields/k_input_field.dart';

class SignUpView4 extends StatelessWidget {
  SignUpView4({super.key});
  final ctrl = Get.put(UserController());
  final GlobalKey<ScaffoldState> skey = GlobalKey();
  final ctrl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      key: skey,
      active: () => ctrl.isActive4,
      header: 'Personal Details',
      body: 'Let\'s get to know you better',
      ctrl1: ctrl,
      onPressed: () => Get.to(() => SignUpView5()),
      childern: [
        Row(
          children: [
            Expanded(
              child: KInputField(
                hint: 'First Name',
                label: 'First Name',
                onChanged: (p0) => ctrl.firstName(p0),
              ),
            ),
            Gap(8.0.w),
            Expanded(
              child: KInputField(
                hint: 'Last Name',
                label: 'Last Name',
                onChanged: (p0) => ctrl.setLastname(p0),
              ),
            ),
          ],
        ),
        Gap(20.0.h),
        KInputField(
          hint: 'Email Address',
          label: 'Email Address',
          onChanged: (p0) => ctrl.setEmail(p0),
        ),
        Gap(20.0.h),
        Row(
          children: [
            Expanded(
              child: KDropDown(ctrl2: ctrl2, ctrl: ctrl),
            ),
            Gap(8.0.w),
            Expanded(
              child: KInputField(
                hint: 'Date of Birth',
                label: 'Date of Birth',
                onChanged: (p0) => ctrl.setDob(p0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
