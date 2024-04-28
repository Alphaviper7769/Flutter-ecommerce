import 'package:ecommerce/common/widgets/login_divider.dart';
import 'package:ecommerce/common/widgets/login_footer.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_title.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';





class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //LOGO , TITLE & SubTitle
              const signupTitle(),

              const SizedBox(height: TSizes.spaceBtwSections,),

              signupForm(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Divider

              loginDivider(),
              const SizedBox(height: TSizes.spaceBtwInputFields,),

              //Footer

              login_footer(),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //SignupFooter()r
            ],
        )
        ),
    )
    );
  }
}