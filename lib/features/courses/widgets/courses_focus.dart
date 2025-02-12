import 'package:f_ui_design_template/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class CoursesFocus extends StatelessWidget {
  const CoursesFocus({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Text(
          'Course Focus',
          style: TextStyle(
            color: dark ? TColors.black : TColors.white,
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            Column(
              children: [
                Text(
                  'UI Development',
                  style: TextStyle(
                    color: dark ? TColors.black : TColors.white,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Architecture',
                  style: TextStyle(
                    color: dark ? TColors.black : TColors.white,
                  ),
                )
              ],
            ),
            Column(children: [
              Text(
                'Desing',
                style: TextStyle(
                  color: dark ? TColors.black : TColors.white,
                ),
              )
            ],),
          ],
        )
      ],
    );
  }
}