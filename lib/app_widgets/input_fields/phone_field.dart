import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../core/app_colors/app_colors.dart';
import '../../features/onboarding/sign_up/controller/user_controller.dart';
import '../buttons/kback_button.dart';
import '../texts/kbody_text.dart';

class KPhoneField extends StatelessWidget {
  const KPhoneField({
    Key? key,
    required this.ctrl1,
    this.validator,
    this.onChanged,
  }) : super(key: key);
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final UserController ctrl1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0.sp),
              color: KColors.grey3,
            ),
            child: Obx(
              () => CountryListPick(
                appBar: AppBar(
                  leading: const KBackButton(
                    circle: true,
                    icon: Icons.close,
                  ),
                  elevation: 0,
                  backgroundColor: KColors.white,
                  title: const KbodyText(text: 'Country'),
                  centerTitle: true,
                ),
                onChanged: (value) {
                  ctrl1.setCountryCode(value!.dialCode ?? '+234');
                  ctrl1.setCountry(value);
                },
                initialSelection: ctrl1.countryCode.value,
                theme: CountryTheme(
                  isShowFlag: true,
                  isDownIcon: false,
                  isShowTitle: false,
                  alphabetTextColor: KColors.grey4,
                  alphabetSelectedTextColor: KColors.grey4,
                  alphabetSelectedBackgroundColor: KColors.grey4,
                  initialSelection: ctrl1.countryCode.value,
                  lastPickText: 'Old text',
                ),
              ),
            ),
          ),
          Gap(10.0.w),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: KColors.grey3,
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                  borderSide: const BorderSide(
                    width: 0,
                    color: KColors.grey3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                  borderSide: const BorderSide(
                    width: 0,
                    color: KColors.grey3,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                  borderSide: BorderSide(
                    width: 0.sp,
                    color: KColors.grey3,
                  ),
                ),
              ),
              onChanged: onChanged,
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
