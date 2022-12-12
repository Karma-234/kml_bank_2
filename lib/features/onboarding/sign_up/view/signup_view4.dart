import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/controller/user_controller.dart';
import 'package:kml_bank_2/features/onboarding/sign_up/view/signup_view3.dart';
import 'package:kml_bank_2/features/onboarding/widgets/onboarding_scaffold.dart';

class SignUpView4 extends StatelessWidget {
  SignUpView4({super.key});
  final ctrl = Get.put(UserController());
  final GlobalKey<ScaffoldState> skey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return OnboardingScaffold(
      active: () => ctrl.isActive4,
      header: 'Personal Details',
      body: 'Let\'s get to know you better',
      ctrl1: ctrl,
      onPressed: () {},
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
              child: Container(
                padding: EdgeInsets.all(
                  10.0.h,
                ),
                height: 56.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  color: KColors.grey3,
                ),
                child: TextFormField(
                  readOnly: true,
                  onTap: () {
                    skey.currentState!.showBottomSheet(
                      (context) => ListView(),
                    );
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0.h),
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: KColors.black1,
                    ),
                    label: const KbodyText(
                      text: 'Gender',
                      height: 18.2,
                      color: KColors.grey5,
                    ),
                    filled: true,
                    fillColor: KColors.grey3,
                    enabled: true,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: KColors.grey3),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: KColors.grey3),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: KColors.grey3),
                    ),
                    hintText: 'Gender',
                    hintStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      height: 18.2 / 14.0,
                      color: KColors.grey5,
                    ),
                  ),
                ),
              ),
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
