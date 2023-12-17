import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation(
      {super.key,
});
  @override
  Widget build(BuildContext context) {
  final dark =THelperFunctions.isDarkMode (context);

  return Positioned(
  bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
  left: TSizes.defaultSpace,
  child: SmoothPageIndicator(

  controller: PageController(),
  count: 3,
  effect: ExpandingDotsEffect(activaDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),

  ),
  ); // Positioned
  }}

