import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {
            print(value);
          },
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sales',
            'Newest',
            'Popularity'
          ].map((option) => DropdownMenuItem(value: option,child: Text(option))
        ).toList()),
        const SizedBox(height: TSizes.spaceBtwSections),

        // Products
        TGridLayout(itemCount: 8, itemBuilder: (_,index) => const TProductCardVertical())
      ],
    );
  }
}