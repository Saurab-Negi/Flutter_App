import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/common/widgets/button/elevated_button.dart';
import 'package:test_app/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import 'package:test_app/utils/constants/sizes.dart';
import 'package:test_app/utils/constants/texts.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: USizes.spaceBtwInputFields),

        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        UPrivacyPolicyCheckBox(),

        SizedBox(height: USizes.spaceBtwInputFields / 2),

        UElevatedButton(onPressed: () {}, child: Text(UTexts.createAccount)),
      ],
    );
  }
}

