import 'package:ecommerce/common/widgets/login/login_divider.dart';
import 'package:ecommerce/common/widgets/login/login_footer.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_title.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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