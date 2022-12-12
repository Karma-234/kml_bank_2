import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kml_bank_2/app_widgets/texts/kbody_text.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';

typedef OnResend = Future Function()?;

class KApptimer extends StatelessWidget {
  KApptimer({
    Key? key,
    required this.duration,
    this.resend,
  }) : super(key: key) {
    count.value = duration;
  }
  final Duration duration;
  final OnResend resend;
  Rx<Duration> count = const Duration().obs;
  reducer() {
    count.value -= const Duration(seconds: 1);
  }

  resetCountDown(duration) {
    count.value = duration;
    startCountdown();
  }

  Future onResend() async {
    resend!().then(
      (_) async {
        await resetCountDown(duration);
      },
    );
  }

  startCountdown() async {
    Timer(
      const Duration(seconds: 1),
      () {
        reducer();
        if (count.value.inSeconds > 0) {
          startCountdown();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    startCountdown();

    return Obx(() {
      if (count.value.inSeconds == 0) {
        onResend();
        return KbodyText(
          text:
              'Resending code  in ${count.value.inMinutes}:${count.value.inSeconds % Duration.secondsPerMinute}',
          color: KColors.grey4,
        );
      }
      return KbodyText(
        text:
            'Resending code  in ${count.value.inMinutes}:${count.value.inSeconds % Duration.secondsPerMinute}',
        color: KColors.grey4,
      );
    });
  }
}
