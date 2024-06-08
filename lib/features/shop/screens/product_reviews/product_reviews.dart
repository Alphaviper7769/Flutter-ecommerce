import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// App Bar
        appBar: TAppBar(title: Text("Reviews & Ratings")),

        /// Body
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Reviews & Ratings are verified and are from people who use same type of device you use."),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Overall Ratings
                      const TOverallProductRating(),
                      const TRatingBarIndicator(rating: 3.6,),
                      Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      // User Review List
                      UserReviewCard(),
                      UserReviewCard()

                    ]))));
  }
}


