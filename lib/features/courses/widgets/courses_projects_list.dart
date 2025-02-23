import 'package:flutter/material.dart';
import 'package:f_ui_design_template/common/widgets/course/tiles/t_tile_project.dart';

import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/colors.dart';

class CoursesProjectsList extends StatelessWidget {
  const CoursesProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(
              horizontal: TSizes.defaultSpace,
              vertical: TSizes.sm,
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
                  "Projects",
                  style: Theme.of(context).textTheme.headlineMedium!.apply(
                                  color: dark ? TColors.white : TColors.black,
                            ),
                ),
              ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView(
              children: <Widget>[
                TTileProject(text: "Sudoku", backgroundColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7)),
                SizedBox(height: TSizes.spaceBtwItems),
                TTileProject(text: "Random user", backgroundColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7)),
                SizedBox(height: TSizes.spaceBtwItems),
                TTileProject(text: "Note Taking", backgroundColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7)),
                SizedBox(height: TSizes.spaceBtwItems),
                TTileProject(text: "Weather", backgroundColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7)),
                SizedBox(height: TSizes.spaceBtwItems),
                TTileProject(text: "Delivery App", backgroundColor: const Color.fromARGB(255, 255, 248, 221).withValues(alpha: 0.7)),
              ],
            ),
          )
        ],
      ),
    );
  }
}