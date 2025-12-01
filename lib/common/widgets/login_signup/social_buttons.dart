import 'package:flutter/material.dart';
import 'package:test_app/utils/constants/colors.dart';
import 'package:test_app/utils/constants/images.dart';
import 'package:test_app/utils/constants/sizes.dart';

class ULoginFooter extends StatelessWidget {
  const ULoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google button
        buildButton(UImages.googleIcon, () {}),

        SizedBox(width: USizes.spaceBtwItems),

        // Facebook button
        buildButton(UImages.facebookIcon, () {}),
      ],
    );
  }

  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: UColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(image, height: USizes.iconMd),
      ),
    );
  }
}
