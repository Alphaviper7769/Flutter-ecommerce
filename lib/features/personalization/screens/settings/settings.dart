import 'package:ecommerce/common/widgets/appBar/appbar.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile.dart';
import 'package:ecommerce/features/personalization/screens/settings/user_profile.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/PrimaryHeaderComponent.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [

          // --Header
          PrimaryHeaderComponent(
            child: Column(
              children: [
                TAppBar(title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),
                
                // -- User Profile Card
                TUserProfile(onPressed: ()=> Get.to(()=>const ProfileScreen())),
                const SizedBox(height: TSizes.spaceBtwSections/1.2,),
              ],
            ),
          ),
          

          // -- Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TSectionHeading(title: 'Account Settings',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),

                TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addressess', subTitle: 'Set shopping delivery address', onTap: () => Get.to(()=> const UserAddressScreen())),
                TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: "Add, remove products or move to checkout", onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In progress and Completed Orders', onTap: () => Get.to(()=> const OrderScreen())),
                TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'View and apply available coupons', onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Manage notifications and alerts', onTap: (){},),
                TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data and connected accounts', onTap: (){},),

                // App Settings
                const SizedBox(height: TSizes.spaceBtwSections,),
                const TSectionHeading(title: 'App Settings',showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems,),
                TSettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to Cloud Firebase', onTap: (){},),
                TSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'GeoLocation',
                  subTitle: 'Set Recommendation based on location',
                  onTap: (){},
                  trailing: Switch(value: true, onChanged: (value){}),
                ),
                TSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result safe for all ages',
                  trailing: Switch(value: false,onChanged: (value) {},)
                ),
                TSettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to high definition',
                  trailing: Switch(value: true,onChanged: (value) {},)
                ),
              ],
            ),
          )


        ],),
        )
    );
  }
}

