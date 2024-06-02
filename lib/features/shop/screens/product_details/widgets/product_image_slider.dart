import 'package:flutter/material.dart';
import 'package:ecommerce/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/images/TRoundedImages.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';


class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.white,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding:
                      EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(TImages.productImage1))),
                )),
    
                // Image Slider
                Positioned(
                  right:0,
                  bottom: 30,
                  left: TSizes.defaultSpace,
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      separatorBuilder: (_,__)=>const SizedBox(width: TSizes.spaceBtwItems),
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (_,index)=>TRoundedImage(
                        width: 80,
                        backgroundColor: dark ? TColors.dark : TColors.white,
                        border: Border.all(color:TColors.primary),
                        padding: const EdgeInsets.all(TSizes.sm),
                        imageUrl: TImages.productImage1,
                      ),
                    ),
                  ),
                ),
    
                // Appbar Icons
                const TAppBar(
                  showBackArrow: true,
                  actions: [
                    TCircularIcon(icon: Iconsax.heart5,color: Colors.red),
                  ],
                )
    
          ],
        ),
      ),
    );
  }
}
