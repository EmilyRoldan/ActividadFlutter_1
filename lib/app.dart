import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:f_ui_design_template/bindings/general_bindings.dart';
import 'package:f_ui_design_template/utils/theme/theme.dart';
import 'package:f_ui_design_template/ui/pages/flutter_course_page.dart';
import 'package:f_ui_design_template/features/courses/courses.dart';


/// -- Use this class to setup themes, inital Bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
      title: "Flutter course",
      home: const CoursesScreen(),
    );
  }
}