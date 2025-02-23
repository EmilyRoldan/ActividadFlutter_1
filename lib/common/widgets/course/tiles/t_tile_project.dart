import 'package:flutter/material.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';



class TTileProject extends StatelessWidget {
  const TTileProject({
    super.key,
    required this.text,
    this.backgroundColor,
  });
  final Color? backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.sm,
      ),
      width: double.infinity,
      height: TSizes.defaultSpace*3,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.folder, color: Colors.blueAccent),
              SizedBox(width: TSizes.lg),
              Text(
                    text,
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                          color: dark ? TColors.white : TColors.black,
                    ),
                  ),
            ],
          ),
          Icon(Icons.more_vert_rounded,),
        ],
      ),
    );
  }
}