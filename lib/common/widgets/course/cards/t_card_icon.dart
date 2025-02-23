import 'package:flutter/material.dart';
import 'package:f_ui_design_template/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class TCardIcon extends StatelessWidget {
  const TCardIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.shadowColor,
    this.onPressed,
    required this.text,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final Color? shadowColor;
  final VoidCallback? onPressed;
  final String text;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
                ? TColors.black.withValues(alpha: 0.9)
                : TColors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: shadowColor != null
                    ? shadowColor!
                    : TColors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: color,
                  size: size,
                ),
              ),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          Text(
            text ,
            style: Theme.of(context).textTheme.titleMedium!.apply(
                color: dark ? TColors.white : TColors.black,
            ),
          )
        ],
      ),
    );
  }
}
