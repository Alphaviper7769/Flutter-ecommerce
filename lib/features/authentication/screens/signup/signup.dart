import 'package:ecommerce/common/widgets/login/login_divider.dart';
import 'package:ecommerce/common/widgets/login/login_footer.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_title.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //LOGO , TITLE & SubTitle
              signupTitle(),

              SizedBox(height: TSizes.spaceBtwSections,),

              signupForm(),
              SizedBox(height: TSizes.spaceBtwSections,),

              //Divider

              loginDivider(),
              SizedBox(height: TSizes.spaceBtwInputFields,),

              //Footer

              login_footer(),
              SizedBox(height: TSizes.spaceBtwSections,),

              //SignupFooter()r
            ],
        )
        ),
    )
    );
  }
}