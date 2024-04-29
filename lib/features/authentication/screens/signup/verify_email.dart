import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/signup/success_screen.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give default space from all the sides
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              // Image

              Image(image: const AssetImage(TImages.mailVerification), width: THelperFunctions.screenWidth(context) * 0.6,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Title

              Text(TTexts.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.supportEmail, style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(
                onPressed: () => Get.to(()=>SuccessScreen(
                  image: TImages.mailSuccess,
                  title: TTexts.yourAccountCreatedTitle,
                  subtitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: ()=>Get.to(()=>LoginScreen()
               )
              ),
              ),
              child: const Text(TTexts.con),),),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail, style: Theme.of(context).textTheme.labelMedium,),),),



            ],
          ),
        ),
      ),
    );
  }
}