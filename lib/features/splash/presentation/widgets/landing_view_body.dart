import 'package:coffee_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'background_image.dart';
import 'landing_button.dart';

class LandingViewBody extends StatelessWidget {
  const LandingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(size: size,imagePath: AppAssets.kLandingImage,),
        LandingButton(size: size),
      ],
    );
  }
}

