import 'package:flutter/material.dart';
import 'package:test_app/common/styles/padding.dart';
import 'package:test_app/common/widgets/login_signup/login_divider.dart';
import 'package:test_app/common/widgets/login_signup/social_buttons.dart';
import 'package:test_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:test_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:test_app/utils/constants/sizes.dart';
import 'package:test_app/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            ULoginHeader(),

            SizedBox(height: USizes.spaceBtwSections),

            // Form
            ULoginForm(),

            SizedBox(height: USizes.spaceBtwSections),

            // Divider
            ULoginDivider(title: UTexts.orSignInWith),

            SizedBox(height: USizes.spaceBtwSections),

            // Footer
            ULoginFooter(),
          ],
        ),
      ),
    );
  }
}
