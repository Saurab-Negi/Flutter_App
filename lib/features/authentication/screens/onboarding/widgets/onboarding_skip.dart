import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:test_app/utils/helpers/devcie_helpers.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Obx(
          () => controller.currentIndex.value == 2 ? SizedBox() : Positioned(
          top: UDeviceHelper.getAppBarHeight(),
          right: 0,
          child: TextButton(onPressed: controller.skipPage, child: Text('Skip'))),
    );
  }
}