import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class loginForm extends StatelessWidget {
  const loginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                  children: [

                    //Email
                    TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.direct_right),
                      labelText: TTexts.email,
                    ),

                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    //Password
                    TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TTexts.password,
                      suffix: Icon(Iconsax.eye_slash),
                    ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields/2),

                    //Remember Me and Forget Password
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Remember Me
                      Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text(TTexts.rememberMe, style: Theme.of(context).textTheme.bodyMedium),
                      ],
                      ),
                      // Forget Password
                      TextButton(onPressed: (){}, child: const Text(TTexts.forgotPassword))
                    ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections,),

                    //Sign In Button
                    SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text(TTexts.signIn),
                    ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    // Create Account
                    SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: ()=> Get.to(()=>SignupScreen()),
                      child: Text(TTexts.createAccount),
                    ),
                    ),

                    // const SizedBox(height: TSizes.spaceBtwSections,),

                  ],
                  ),
                ),
                );
  }
}