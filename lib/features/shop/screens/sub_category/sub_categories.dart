import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/images/TRoundedImages.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              const TRoundedImage(
                imageUrl: TImages.banner1,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: 'Anime Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
