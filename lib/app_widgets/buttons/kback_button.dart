import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/app_colors/app_colors.dart';

class KBackButton extends StatelessWidget {
  const KBackButton({
    Key? key,
    this.icon,
    this.color,
    this.circle = false,
  }) : super(key: key);
  final IconData? icon;
  final Color? color;
  final bool circle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        margin: EdgeInsets.all(12.0.r),
        decoration: BoxDecoration(
          shape: circle ? BoxShape.circle : BoxShape.rectangle,
          color: KColors.grey2,
          borderRadius: circle ? null : BorderRadius.circular(8.0.r),
        ),
        child: Icon(
          icon ?? Icons.arrow_back_rounded,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
