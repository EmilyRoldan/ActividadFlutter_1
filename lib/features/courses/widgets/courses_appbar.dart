import 'package:f_ui_design_template/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:f_ui_design_template/common/widgets/appbar/appbar.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';
import 'package:f_ui_design_template/common/widgets/course/icons/search_course_icon.dart';
import 'package:f_ui_design_template/common/widgets/course/icons/notification_course_icon.dart';


import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class CoursesAppbar extends StatelessWidget {
  const CoursesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      color: TColors.primary,
      child: Column(
        children: [
          SizedBox(height: TSizes.spaceBtwSections),
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: TAppBar(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TTexts.homeAppbarTitle,
                    style: Theme.of(context).textTheme.headlineMedium!.apply(
                          color: dark ? TColors.black : TColors.white,
                    ),
                  ),
                  Text(
                    TTexts.homeAppbarSubTitle,
                    style: Theme.of(context).textTheme.bodySmall!.apply(
                          color: dark ? TColors.black : TColors.white,
                    ),
                  ),
                ],
              ),
              actions: [
                SearchCourseIcon(onPressed: () {}, iconColor: TColors.white),
                SizedBox(width: TSizes.sm),
                NotificationCourseIcon(onPressed: () {}, iconColor: TColors.white)
              ],
            ),
          ),
        ],
      ),
    );
  }
}