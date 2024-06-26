import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cards/brand_card.dart';
import 'package:ecommerce/common/widgets/products/sortable_products.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const  EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            
            // Heaading 
            const TSectionHeading(title: 'Brands',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            // Brands
            TGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (content,index) =>  TBrandCard(showBorder: true,onTap: ()=>Get.to(()=>const  BrandProducts()),))
          ],),
        ),
      ),
    );
  }
}
