import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:kml_bank_2/app_widgets/buttons/kapp_button.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/app_widgets/texts/kheader_text.dart';
import 'package:kml_bank_2/core/extensions/string_extension.dart';

class SignUpView6 extends StatelessWidget {
  const SignUpView6({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(
              'success'.png,
              height: 135.0.h,
            ),
            Gap(30.0.h),
            const KHeaderText(
              text: 'You\'ve set your passcode',
              fontSize: 20.0,
              height: 24.0,
              align: TextAlign.center,
            ),
            Gap(13.0.h),
            const KbodyText(
              text: 'You can now sign in to your account with your passcode.',
              height: 21.0,
              align: TextAlign.center,
            ),
            const Spacer(),
            KAppButton(
              text: 'Continue',
              onPressed: () {},
              width: double.infinity,
            ),
            Gap(50.0.h),
          ],
        ),
      ),
    );
  }
}
