import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage( dark ? TImages.darkAppLogo: TImages.lightAppLogo),
                  ),
                  Text(TTexts.loginScreenTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginScreenSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                  // const SizedBox(height: TSizes.md),
                ],
              );
  }
}