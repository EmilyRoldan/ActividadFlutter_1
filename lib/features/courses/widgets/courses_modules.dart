import 'package:flutter/material.dart';
import 'package:f_ui_design_template/utils/constants/sizes.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';
import 'package:f_ui_design_template/common/widgets/course/cards/t_card_icon.dart';

import '../../../../../utils/constants/colors.dart';

class CoursesModules extends StatelessWidget {
  const CoursesModules({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(
              horizontal: TSizes.sm,
            ),
            child: Text(
              "Modules",
              style: Theme.of(context).textTheme.headlineMedium!.apply(
                              color: dark ? TColors.white : TColors.black,
                        ),
            ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(
                        width: 150,
                        height: 150,
                        child: TCardIcon(
                          width: 150,
                          height: 150,
                          size: TSizes.iconLg*2,
                          color: Colors.blue,
                          shadowColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7),
                          icon: Icons.book,
                          text: 'Introduction',
                        ),
              ),
              SizedBox(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                              TCardIcon(
                                width: 150,
                                height: 150,
                                size: TSizes.iconLg*2,
                                color: Colors.red,
                                shadowColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7),
                                icon: Icons.design_services,
                                text: 'UX design',
                              ),
                          ],
                        ),
              ),
              SizedBox(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                              TCardIcon(
                                width: 150,
                                height: 150,
                                size: TSizes.iconLg*2,
                                color: Colors.orange,
                                shadowColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7),
                                icon: Icons.storage,
                                text: 'State Management',
                              ),
                          ],
                        ),
              ),
              SizedBox(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                              TCardIcon(
                                width: 150,
                                height: 150,
                                size: TSizes.iconLg*2,
                                color: Colors.grey,
                                shadowColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7),
                                icon: Icons.bug_report,
                                text: 'Testing',
                              ),
                          ],
                        ),
              ),
              SizedBox(
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                              TCardIcon(
                                width: 150,
                                height: 150,
                                size: TSizes.iconLg*2,
                                color: Colors.blue,
                                shadowColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7),
                                icon: Icons.network_check,
                                text: 'Networking',
                              ),
                          ],
                        ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}