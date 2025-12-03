import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:test_app/common/styles/padding.dart';
import 'package:test_app/common/widgets/button/elevated_button.dart';
import 'package:test_app/utils/constants/sizes.dart';
import 'package:test_app/utils/constants/texts.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                UTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems / 2),

              Text(
                UTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections * 2),

              // Form
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: UTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),

                  SizedBox(height: USizes.spaceBtwSections),

                  UElevatedButton(onPressed: () {}, child: Text(UTexts.submit)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
