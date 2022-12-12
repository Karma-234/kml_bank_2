import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors/app_colors.dart';

class KbodyText extends StatelessWidget {
  const KbodyText(
      {Key? key,
      required this.text,
      this.fontSize = 14.0,
      this.height = 20.0,
      this.color = KColors.black1,
      this.weight = FontWeight.w400})
      : super(key: key);
  final String text;
  final double? fontSize;
  final double? height;
  final Color? color;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize!.sp,
        height: height! / fontSize!,
        fontWeight: weight,
      ),
    );
  }
}
