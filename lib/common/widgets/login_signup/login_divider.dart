import 'package:flutter/material.dart';
import 'package:test_app/utils/constants/colors.dart';
import 'package:test_app/utils/helpers/helper_function.dart';

class ULoginDivider extends StatelessWidget {
  const ULoginDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Expanded(
          child: Divider(
            indent: 30,
            endIndent: 5,
            thickness: 0.5,
            color: dark ? UColors.darkGrey : UColors.grey,
          ),
        ),
        Text(title, style: Theme.of(context).textTheme.labelMedium),
        Expanded(
          child: Divider(
            indent: 5,
            endIndent: 30,
            thickness: 0.5,
            color: dark ? UColors.darkGrey : UColors.grey,
          ),
        ),
      ],
    );
  }
}
