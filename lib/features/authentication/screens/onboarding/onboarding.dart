import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(children: [
      // Horizontal Scrollable Pages
      PageView(

        controller: controller.pageController,
        onPageChanged: controller.updatePageIndicator,
        children: const [
          OnBoardingPage(
              image: TImages.onBoarding1,
              title: TTexts.onBoardingTitle1,
              subtitle: TTexts.onBoardingSubtitle1),
          OnBoardingPage(
              image: TImages.onBoarding2,
              title: TTexts.onBoardingTitle2,
              subtitle: TTexts.onBoardingSubtitle2),
          OnBoardingPage(
              image: TImages.onBoarding3,
              title: TTexts.onBoardingTitle3,
              subtitle: TTexts.onBoardingSubtitle3),
        ],
      ),

      // SKIP Button
      const OnboardingSkip(),

      // Dot Navigation SmoothPage Indicator
      const OnboardingDotNavigation(),

      // Circular Button
      const OnBoardingNextButton()
    ]));
  }
}



