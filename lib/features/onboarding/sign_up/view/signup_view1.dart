import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/app_widgets/texts/kheader_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view2.dart';

import '../../../../app_widgets/buttons/kback_button.dart';
import '../../../../app_widgets/input_fields/phone_field.dart';
import '../../widgets/onboarding_scaffold.dart';

class SignUpView1 extends StatelessWidget {
  SignUpView1({super.key});
  final ctrl1 = Get.put(
    UserController(),
  );

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      ctrl1: ctrl1,
      header: 'Let\'s get started!',
      body: 'Please enter your phone number to get started ',
      onPressed: () async {
        Get.to(() => SignUpView2());
      },
      active: () => ctrl1.isActive,
      childern: [
        KPhoneField(
          ctrl1: ctrl1,
          onChanged: (p0) {
            if (p0.isPhoneNumber) {
              ctrl1.setPhoneNumber(p0);
            } else {
              ctrl1.setPhoneNumber('');
            }
          },
          validator: (p0) {
            if (p0?.isEmpty ?? true) {
              return 'Please enter a value';
            } else {
              ctrl1.setPhoneNumber(p0!);
            }
            return null;
          },
        ),
      ],
    );
  }
}
