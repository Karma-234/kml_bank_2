import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../app_widgets/buttons/kback_button.dart';
import '../../../app_widgets/texts/kbody_text.dart';
import '../../../app_widgets/texts/kheader_text.dart';
import '../../../core/app_colors/app_colors.dart';
import '../sign_up/controller/user_controller.dart';

class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    Key? key,
    required this.ctrl1,
    required this.header,
    required this.body,
    this.onPressed,
    this.childern = const [],
    required this.active,
    this.widget,
  }) : super(key: key);

  final UserController ctrl1;
  final String header;
  final String body;
  final Function()? onPressed;
  final List<Widget> childern;
  final Function active;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const KBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  KHeaderText(text: header),
                  Gap(10.0.h),
                  KbodyText(
                    text: body,
                  ),
                  Gap(30.0.h),
                  ...childern,
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget ?? Gap(10.0.w),
                Obx(
                  () => FloatingActionButton(
                    onPressed: active() ? onPressed : null,
                    backgroundColor:
                        active() ? KColors.blue2 : KColors.disabled,
                    elevation: 4,
                    disabledElevation: 0,
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: KColors.white,
                      size: 20.0.sp,
                    ),
                  ),
                ),
              ],
            ),
            Gap(24.0.h),
          ],
        ),
      ),
    );
  }
}
