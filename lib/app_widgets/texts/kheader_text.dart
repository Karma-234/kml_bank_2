import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_colors/app_colors.dart';

class KHeaderText extends StatelessWidget {
  const KHeaderText({
    Key? key,
    required this.text,
    this.fontSize = 24.0,
    this.height = 32.0,
    this.color = KColors.black1,
    this.weight = FontWeight.w600,
    this.align,
  }) : super(key: key);
  final String text;
  final double? fontSize;
  final double? height;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.inter(
        color: color,
        fontSize: fontSize!.sp,
        height: height! / fontSize!,
        fontWeight: weight,
      ),
    );
  }
}
