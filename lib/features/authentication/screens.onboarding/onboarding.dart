import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../constants/text_strings.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
        /// Horizontal Scrollable Pages
        PageView(

        children: const [
        OnBoardingPage(
            image: TImages.onBoardingImage1,
            title: TTexts.onBoardingTitle1,
            subTitle: TTexts.onBoardingSubTitle1),
          OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2),
          OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3),
  ],
        ), // PageView

          const OnBoardingSkip(),
          const OnBoardingNavigation(),
    Positioned (

    right: TSizes.defaultSpace,
    bottom: TDeviceUtils.getBottomNavigationBarHeight(),
    child: ElevatedButton(),
    )
    ],
  ),
    );
  }
}

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context)
    return Positioned(

    bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
    left: TSizes.defaultSpace,
    child: SmoothPageIndicator(
    controller: PageController(),
    count: 3,
    effect: const ExpandingDotsEffect(
        activeDotColor: TColors.dark ? TColors.light: TColors.dark,dotHeight:6
        ),
    ),
    );
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBoarding();
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: TDeviceUtils.getAppBarHeight(),right:TSizes.defaultSpace,child: TextButton(onPressed: (){}, child: const Text('Skip'),));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
  });
  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(TSize.defaultSpace),
      child: Column(
      children: [
  Image(
          width: THelperFunctions.screenWidth() * 0.8,
      height: THelperFunctions.screenHeight()*0.6,
      image: const AssetImage(image),
        Text(
title,            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center),
      SizedBox(height: TSizes.spaceBtwItems).
        Text(
            TTexts.onBoardingSubTitle1,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center),
  ],
  ),
    );
  }
}