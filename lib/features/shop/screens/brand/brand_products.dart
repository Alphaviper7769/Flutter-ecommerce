import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cards/brand_card.dart';
import 'package:ecommerce/common/widgets/products/sortable_products.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
