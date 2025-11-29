import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/utils/constants/sizes.dart';
import 'package:test_app/utils/helpers/devcie_helpers.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.animation, required this.title, required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: USizes.defaultSpace, left: USizes.defaultSpace, top: UDeviceHelper.getAppBarHeight()),
      child: Column(
        children: [
          // Animation
          Lottie.asset(animation),

          // Title
          Text(title, style: Theme.of(context).textTheme.headlineMedium),

          // Subtitle
          Text(subtitle, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}