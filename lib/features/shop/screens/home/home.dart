import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/HomeCategories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/PrimaryHeaderComponent.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promoSlider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/homeAppBar.dart';
import "package:ecommerce/features/shop/screens/home/widgets/t_search_container.dart";
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      // Header
        const PrimaryHeaderComponent(
        child: Column(
          children: [
            // App Bar
            homeAppBar(),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            // lib\features\shop\screens\home\widgets

            // Search Bar
            TSearchContainer(
              text: 'Search in Store',
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Categories
            //
            Padding(
              padding: EdgeInsets.only(left: TSizes.spaceBtwInputFields),
              child: Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: 'Popular Categories',
                    showActionButton: false,
                    // onPressed:  () => Get.to(() => const AllProducts())
                    // onPressed: () {
                    //   print('test');
                    // },
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  // Categories
                  THomeCategories()
                ],
              ),
            ),

            SizedBox(height: TSizes.spaceBtwSections,)
          ],
        ),
      ),

      // Body

      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        // -- Promo Banner and Slider -- //

        child: Column(
          children: [
            const TPromoSlider(
              banners: [
                TImages.banner1,
                TImages.banner2,
                TImages.banner3,
              ],
             
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,),

              // -- Heading
               TSectionHeading(title:'Popular Products',showActionButton: true, onPressed:  () => Get.to(() => const AllProducts())),
               const SizedBox(height: TSizes.spaceBtwItems,),

             // -- Popular Products -- //
              TGridLayout(itemCount: 4, itemBuilder: ( _ , index) => const TProductCardVertical()),
              

          ],
        ),
          
      )
    ]
    )
    
    )
    );
  }
}

