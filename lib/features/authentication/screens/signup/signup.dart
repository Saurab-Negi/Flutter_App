import 'package:flutter/material.dart';
import 'package:test_app/common/styles/padding.dart';
import 'package:test_app/common/widgets/login_signup/login_divider.dart';
import 'package:test_app/common/widgets/login_signup/social_buttons.dart';
import 'package:test_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:test_app/utils/constants/sizes.dart';
import 'package:test_app/utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: USizes.spaceBtwSections),

              // Form
              USignupForm(),

              SizedBox(height: USizes.spaceBtwSections),

              // Divider
              ULoginDivider(title: UTexts.orSignupWith),

              SizedBox(height: USizes.spaceBtwSections),

              // Footer
              ULoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
