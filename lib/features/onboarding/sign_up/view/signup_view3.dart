import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view4.dart';
import 'package:kml_bank_2/features/onboarding/widgets/onboarding_scaffold.dart';

class SignUpView3 extends StatelessWidget {
  SignUpView3({super.key});
  final ctrl = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      ctrl1: ctrl,
      header: 'Create a Password',
      body: 'Your password should be at least 8 characters long',
      active: () => ctrl.isActive3,
      onPressed: () => Get.to(() => SignUpView4()),
      childern: [
        KInputField(
          onChanged: (p0) => ctrl.setPassword(p0),
          hint: 'Password',
          label: 'Password',
        ),
      ],
    );
  }
}

class KInputField extends StatelessWidget {
  const KInputField({
    Key? key,
    this.onChanged,
    required this.hint,
    required this.label,
  }) : super(key: key);
  final Function(String)? onChanged;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0.r),
      height: 56.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        color: KColors.grey3,
      ),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.0.h),
          hintText: hint,
          hintStyle: GoogleFonts.inter(
            fontSize: 14.0,
            height: 18.2 / 14.0,
            color: KColors.grey5,
          ),
          enabled: true,
          filled: true,
          fillColor: KColors.grey3,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: KColors.grey3,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: KColors.grey3,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: KColors.grey3,
            ),
          ),
          label: KbodyText(
            text: label,
            height: 18.2,
            color: KColors.grey5,
          ),
        ),
      ),
    );
  }
}
