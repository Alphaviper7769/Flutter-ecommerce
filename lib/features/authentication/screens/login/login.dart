import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import "package:ecommerce/features/authentication/screens/login/widgets/login_header.dart";
import "package:ecommerce/features/authentication/screens/login/widgets/login_form.dart";
import "package:ecommerce/common/widgets/login/login_divider.dart";
import "package:ecommerce/common/widgets/login/login_footer.dart";




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //LOGO , TITLE & SubTitle
              loginHeader(),

              //Form
              loginForm(),

                //Divider
                loginDivider(),
                SizedBox(height: TSizes.spaceBtwSections,),

                //Footer
                login_footer()
            ],
          ),
        ),
      ),
    );
  }
}