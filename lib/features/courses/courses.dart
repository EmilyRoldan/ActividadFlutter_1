import 'package:f_ui_design_template/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:f_ui_design_template/features/courses/widgets/courses_appbar.dart';
import 'package:f_ui_design_template/features/courses/widgets/courses_focus.dart';
import 'package:f_ui_design_template/features/courses/widgets/courses_modules.dart';
import 'package:f_ui_design_template/features/courses/widgets/courses_projects_list.dart';
///import 'package:f_ui_design_template/ui/pages/flutter_course_page.dart';


class CoursesScreen extends StatelessWidget{
    const CoursesScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      body: Column(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// -- AppBar --
                CoursesAppbar(),
                /// -- Course Focus --
                CoursesFocus(),
                Divider(
                    color: Colors.grey, // Color de la línea
                    thickness: 1, // Grosor de la línea
                    height: TSizes.buttonHeight, // Espaciado arriba y abajo
                ),
                /// -- Courses Modules --
                CoursesModules(),
                SizedBox(height: TSizes.spaceBtwItems),
                Divider(
                    color: Colors.grey, // Color de la línea
                    thickness: 1, // Grosor de la línea
                    height: TSizes.buttonHeight, // Espaciado arriba y abajo
                ),
                /// -- Courses Project List --
                CoursesProjectsList(),
                
              ],
            )
        ],
      ),
    );
    }
}