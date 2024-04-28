import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class signupTitle extends StatelessWidget {
  const signupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium);
  }
}