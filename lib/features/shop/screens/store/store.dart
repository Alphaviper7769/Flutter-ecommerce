import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/appBar/tabbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cards/brand_card.dart';
import 'package:ecommerce/common/widgets/products/cards/cart_menu_item.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/t_search_container.dart';
import 'package:ecommerce/features/shop/screens/store/category_tab.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: TAppBar(
            title: const Text('Store'),
            actions: [
              TCartCounterIcon(
                onPressed: () {},
                iconColor: Colors.black,
              )
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? Colors.black
                        : Colors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          /// --- Search Bar
                          const SizedBox(
                            height: TSizes.spaceBtwInputFields,
                          ),
                          const TSearchContainer(
                              text: 'Search in Store',
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),
      
                          /// -- Featured Brands
                          TSectionHeading(
                            title: 'Featured Brands',
                            onPressed: () {},
                          ),
                          const SizedBox(height: TSizes.spaceBtwItems / 1.5),
      
                          TGridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (_, index){
                            return const TBrandCard(showBorder: true);
                          }),
                        ],
                      ),
                    ),
      
                    // -- Tabs
                    bottom: const TTabBar(
                      tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Cosmetics')),
                      ],
                    )
      
                  )
                ];
              },
      
              // -- Body
              body:  const TabBarView(children: 
                  [
                    TCategoryTab(),
                    TCategoryTab(),
                    TCategoryTab(),
                    TCategoryTab(),
                    TCategoryTab(),
                  ],
                )
                ),
              )
    );
  }
}

