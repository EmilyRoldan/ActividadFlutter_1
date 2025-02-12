import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class NotificationCourseIcon extends StatelessWidget {
  const NotificationCourseIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    required this.onPressed,
    this.backgroundColor = TColors.black,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? TColors.black.withValues(alpha: 0.9)
                : TColors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10)),
      ),
      child: Stack(children: [
        IconButton(
            onPressed: () => Get.to(() {}),
            icon: Icon(Iconsax.notification, color: iconColor)),
      ]),
    );
  }
}
