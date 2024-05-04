import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/HomeCategories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/PrimaryHeaderComponent.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/homeAppBar.dart';
import "package:ecommerce/features/shop/screens/home/widgets/t_search_container.dart";

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
      )
    ])));
  }
}