import 'package:flutter/material.dart';
import 'package:test_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:test_app/utils/constants/images.dart';
import 'package:test_app/utils/constants/texts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable page
          PageView(
            children: [
              OnBoardingPage(animation: UImages.onboarding1Animation, title: UTexts.onBoardingTitle1, subtitle: UTexts.onBoardingSubTitle1),
              OnBoardingPage(animation: UImages.onboarding2Animation, title: UTexts.onBoardingTitle2, subtitle: UTexts.onBoardingSubTitle2),
              OnBoardingPage(animation: UImages.onboarding3Animation, title: UTexts.onBoardingTitle3, subtitle: UTexts.onBoardingSubTitle3)
            ],
          )
        ],
      )
    );
  }
}
