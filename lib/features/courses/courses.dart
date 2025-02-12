import 'package:flutter/material.dart';
import 'package:f_ui_design_template/features/courses/widgets/courses_appbar.dart';


class CoursesScreen extends StatelessWidget{
    const CoursesScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Column(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// -- AppBar --
                  CoursesAppbar(),
                ],
              )
          ],
        ),
      ),
    );
    }
}