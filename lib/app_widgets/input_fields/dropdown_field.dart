import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors/app_colors.dart';
import '../../features/onboarding/sign_up/controller/user_controller.dart';
import '../texts/kbody_text.dart';
import '../texts/kheader_text.dart';

class KDropDown extends StatelessWidget {
  const KDropDown({
    Key? key,
    required this.ctrl2,
    required this.ctrl,
  }) : super(key: key);

  final TextEditingController ctrl2;
  final UserController ctrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        10.0.h,
      ),
      height: 56.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        color: KColors.grey3,
      ),
      child: TextFormField(
        controller: ctrl2,
        readOnly: true,
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const KHeaderText(text: 'Male'),
                    onTap: () async {
                      (ctrl2.text = 'Male');
                      Get.back();
                      ctrl.setGender('Male');
                    },
                  ),
                  ListTile(
                    title: const KHeaderText(text: 'Female'),
                    onTap: () {
                      ctrl2.text = 'Female';
                      Get.back();
                      ctrl.setGender('Female');
                    },
                  ),
                ],
              );
            },
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
    );
  }
}
