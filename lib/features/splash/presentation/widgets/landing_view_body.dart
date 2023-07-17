import 'package:coffee_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
class LandingViewBody extends StatelessWidget {
  const LandingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Stack(

      children: [
        Image.asset(AppAssets.kLandingImage,width: size.width,height: size.height,fit: BoxFit.cover,),
      ],
    );
  }
}
