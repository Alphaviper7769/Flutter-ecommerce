import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class signupForm extends StatelessWidget {
  const signupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return //Form
        Form(
      child: Column(
        children: [
          //SignupForm
          Row(
            children: [
              //First Name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),

              //Last Name
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //UserName
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Confirm Password

          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.confirmPassword,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Terms & Conditions

          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: '${TTexts.iAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.primary : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.primary : TColors.primary,
                          )),
                  TextSpan(
                      text: ' & ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${TTexts.termsOfService} ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: dark ? TColors.primary : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor:
                                dark ? TColors.primary : TColors.primary,
                          ))
                ]),
              ),
            ],
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //Signup Button

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const VerifyEmailScreen()),
                  child: const Text(TTexts.createAccount)))
        ],
      ),
    );
  }
}
