import 'package:ecommerce/common/widgets/images/TCircularImages.dart';
import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [

            // Sale
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            //Price
            const TProductPriceText(price: '250',lineThrough: true),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175',isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        /// Title
        const TProductTitleText(title: 'Nike White Shoe'),
        const SizedBox(height: TSizes.spaceBtwItems/1.5,),

        /// Stock Status
        Row(children: [
          const TProductTitleText(title: 'Status'),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
        ],),
        const SizedBox(height: TSizes.spaceBtwItems/1.5),

        /// Brand
        Row(
          children: [
            TCircularImage(image: TImages.clothIcon,width: 32,height: 32, overlayColor: darkMode ? TColors.white:TColors.black),
            const SizedBox(width: TSizes.spaceBtwItems/2.3),
            const TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
      ],
    );
  }
}
