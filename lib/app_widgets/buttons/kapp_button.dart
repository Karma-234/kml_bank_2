import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors/app_colors.dart';
import '../texts/kbody_text.dart';

class KAppButton extends StatelessWidget {
  const KAppButton(
      {Key? key,
      this.width,
      this.onPressed,
      this.white = false,
      this.btnColor,
      this.txtColor,
      required this.text,
      this.elevation})
      : super(key: key);
  final Function()? onPressed;
  final double? width;
  final bool white;
  final Color? btnColor;
  final Color? txtColor;
  final String text;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width == null ? double.infinity : width!.w, 48.0.h),
        backgroundColor: btnColor ?? KColors.blue2,
        elevation: elevation ?? 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          side: BorderSide(color: white ? KColors.grey1 : Colors.transparent),
        ),
      ),
      child: KbodyText(
        text: text,
        color: white ? KColors.black1 : txtColor ?? KColors.white,
        weight: FontWeight.w500,
      ),
    );
  }
}
