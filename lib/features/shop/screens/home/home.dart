import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shape/container/circular_container.dart';
import 'package:ecommerce/common/widgets/images/TRoundedImages.dart';
import 'package:ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/HomeCategories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/PrimaryHeaderComponent.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promoSlider.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/homeAppBar.dart';
import "package:ecommerce/features/shop/screens/home/widgets/t_search_container.dart";
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      // Header
       PrimaryHeaderComponent(
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
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  // Categories
                  THomeCategories()
                ],
              ),
            )
          ],
        ),
      ),

      // Body

      Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // -- Promo Banner and Slider -- //

        child: Column(
          children: [
            TPromoSlider(
              banners: [
                TImages.banner1,
                TImages.banner2,
                TImages.banner3,
              ],
             
            ),

            SizedBox(
              height: TSizes.spaceBtwSections,),

             // -- Popular Products -- //
            
              TProductCardVertical(),

          ],
        ),
          
      )
    ]
    )
    
    )
    );
  }
}
