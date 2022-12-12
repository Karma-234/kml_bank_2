import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors/app_colors.dart';
import '../texts/kbody_text.dart';

class KInputField extends StatelessWidget {
  const KInputField({
    Key? key,
    this.onChanged,
    required this.hint,
    required this.label,
    this.suffixIcon,
    this.ctrl,
    this.hide = false,
  }) : super(key: key);
  final Function(String)? onChanged;
  final String hint;
  final String label;
  final TextEditingController? ctrl;
  final Widget? suffixIcon;
  final bool hide;

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
        obscureText: hide,
        controller: ctrl,
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
          suffixIcon: suffixIcon,
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
