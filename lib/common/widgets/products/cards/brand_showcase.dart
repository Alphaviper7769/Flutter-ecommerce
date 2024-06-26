import 'package:ecommerce/common/widgets/products/cards/brand_card.dart';
import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.grey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Product Count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),
          
          // Brand Top 3 Product Images
          Row(
              children: images.map((image) => brandTopProductImageWidget(image, context)).toList()
            )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.md),
      child: Image(fit: BoxFit.contain,image: AssetImage(image)),
    )
  );
}