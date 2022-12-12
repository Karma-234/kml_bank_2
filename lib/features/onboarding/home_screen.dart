import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_bank_2/app_widgets/buttons/kapp_button.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/core/extensions/string_extension.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view1.dart';

import '../../app_widgets/texts/kbody_text.dart';
import '../../app_widgets/texts/kheader_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(
              'piggy'.png,
            ),
            Gap(40.0.h),
            const KHeaderText(
              text: 'Managing your finances is easier with Ameta',
              fontSize: 30.0,
              height: 38.0,
            ),
            Gap(11.0.h),
            const KbodyText(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur ',
            ),
            Gap(48.0.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KAppButton(
                  onPressed: () {
                    Get.to(() => SignUpView1());
                  },
                  width: 155.0,
                  text: 'Sign Up',
                ),
                KAppButton(
                  onPressed: () {},
                  white: true,
                  width: 155.0,
                  text: 'Login',
                  btnColor: KColors.white,
                  elevation: 0,
                )
              ],
            ),
            Gap(48.0.h)
          ],
        ),
      ),
    );
  }
}
