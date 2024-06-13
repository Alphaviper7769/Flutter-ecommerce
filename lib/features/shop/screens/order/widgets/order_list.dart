import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TOrderList extends StatelessWidget {
  const TOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_,__)=>const SizedBox(height: TSizes.spaceBtwItems),
      itemBuilder: (_,index)=> TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          //  Row 1
          Row(
            children: [
              // 1 - Icon
              const Icon(Iconsax.ship),
              const SizedBox(width: TSizes.spaceBtwItems / 2),

              // 2 - Status and Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: TColors.primary, fontWeightDelta: 1),
                    ),
                    Text('07 Nov 2024',
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),

              // 3 - ICON
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm))
            ],
          ),

          // Row 2
          Row(
            children: [
              Expanded(
                  child: Row(children: [
                // 1- Icon
                const Icon(Iconsax.tag),
                const SizedBox(width: TSizes.spaceBtwItems / 2),

                // 2- Status & Date
                Expanded(
                  child: 
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text('[#123456]',
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),

                Expanded(child: Row(children: [
                  // 1- Icon
                  const Icon(Iconsax.calendar),
                  const SizedBox(width: TSizes.spaceBtwItems / 2),

                  // 2- Status & Date
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Date',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text('07 Nov 2024',
                          style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ],)
                ,)
              ]))
            ],
          ),
        ]))
    );
  }
}
