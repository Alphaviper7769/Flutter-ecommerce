import 'package:ecommerce/common/widgets/images/TRoundedImages.dart';
import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/shadow.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    // Container with side paddings, color, edges, radius and shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.vericalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),

      child: Column(
        children: [

          // Thumbnail ,Wishlist Button, Discount Tag

          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.white,
            
            child: Stack(
              children: [

                // --Thumbnail
                TRoundedImage(imageUrl: TImages.productImage1),

                // --Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                  ),
                ),

                // --Favourite Icon Button

                Container(
                  decoration: BoxDecoration(
                    color: dark ? TColors.black.withOpacity(0.9) : TColors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.heart5)),
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}