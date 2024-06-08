import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/choice_chip.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_price_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing @ Description

        TRoundedContainer(
            padding: const EdgeInsets.all(TSizes.md),
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            child: Column(
              children: [
                // Title, Price and Stock Status
                Row(
                  children: [
                    const TSectionHeading(
                        title: 'Variation', showActionButton: false),
                    const SizedBox(width: TSizes.spaceBtwItems),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            TProductTitleText(
                                title: 'Price : ', smallSize: true),
                            SizedBox(width: TSizes.spaceBtwItems / 2),

                            // Actual Price
                            TProductPriceText(price: '25', lineThrough: true),
                            SizedBox(width: TSizes.spaceBtwItems / 2),
                            TProductPriceText(price: '20', isLarge: true),
                          ],
                        ),
                        Row(
                          children: [
                            const TProductTitleText(
                                title: 'Stock : ', smallSize: true),
                            Text('In Stock',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwItems/2),

                // Variation Description
                const TProductTitleText(
                  title:
                      'This is the description of the product and can go upto 4 lines',
                  smallSize: true,
                ),
              ],
            )),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(spacing: 8, children: [
              TChoiceChip(
                text: 'Green',
                selected: true,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Blue',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'Red',
                selected: false,
                onSelected: (value) {},
              ),
            ]),
          ],
        ),
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Sizes',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(spacing: 8, children: [
              TChoiceChip(
                text: 'EU 34',
                selected: true,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'EU 36',
                selected: false,
                onSelected: (value) {},
              ),
              TChoiceChip(
                text: 'EU 38',
                selected: false,
                onSelected: (value) {},
              ),
            ]),
          ],
        )
      ],
    );
  }
}
