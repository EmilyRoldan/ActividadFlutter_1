import 'package:f_ui_design_template/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class CoursesFocus extends StatelessWidget {
  const CoursesFocus({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(
              horizontal: TSizes.defaultSpace,
              vertical: TSizes.defaultSpace,
            ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: TSizes.sm,
            ),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "Course focus",
                style: Theme.of(context).textTheme.headlineMedium!.apply(
                                color: dark ? TColors.white : TColors.black,
                          ),
              ),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: 1,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(TColors.primary),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      'UI Development',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                                  color: dark ? TColors.white : TColors.black,
                            ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: 1,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      'Architecture',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                                  color: dark ? TColors.white : TColors.black,
                            ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    LinearProgressIndicator(
                      value: 0.65,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                    ),
                    SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      'Desing thinking Testing',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                                  color: dark ? TColors.white : TColors.black,
                            ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}