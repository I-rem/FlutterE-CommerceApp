import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

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
          title,  style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center),
      SizedBox(height: TSizes.spaceBtwItems).
      Text(
          TTexts.onBoardingSubTitlel,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center),
      ],
    ),
    );
  }
}