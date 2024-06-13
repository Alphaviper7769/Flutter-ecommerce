import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(dark: dark),

            /// 2 - Product Details
            Padding(
                padding: const EdgeInsets.only(
                    right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// - Rating & Share
                    const TRatingAndShare(),

                    /// - Price, Title, Stock & Brand
                    const TProductMetaData(),

                    /// -- Attributes
                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// -- Checkout Button
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// - Description
                    const TSectionHeading(title: 'Description', showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    ReadMoreText(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui.',
                      trimLines: 2,
                      colorClickableText: dark ? Colors.white : Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more',
                      trimExpandedText: ' Show less',
                      moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: Colors.blue),
                      lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800,color: Colors.blue),
                    ),

                    /// - Reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Row(children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionButton: false),
                      IconButton(onPressed: ()=> Get.to(()=>const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18))
                    ],),

                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


