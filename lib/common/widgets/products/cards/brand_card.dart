import 'package:ecommerce/common/widgets/images/TCircularImages.dart';
import 'package:ecommerce/common/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
    });

    final bool showBorder;
    final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: TCircularImage(
              image: TImages.clothIcon,
              isNetworkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor: isDark ? TColors.white:TColors.black,
              )
              ),
              const SizedBox(width: TSizes.spaceBtwItems/2),
              
              Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TBrandTitleWithVerifiedIcon(
                              title: 'Nike',
                              brandTextSize: TextSizes.large,
                              ),
                            Text('256 products',overflow: TextOverflow.ellipsis, style:Theme.of(context).textTheme.labelMedium,),
                          ],
                        ),
                      ),
          ],
        ),
        ),
    );
  }
}