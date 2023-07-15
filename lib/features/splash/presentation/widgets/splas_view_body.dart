import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [
         AppColors.kFirstGradientColor,
         AppColors.kSecondGradientColor.withOpacity(0.81),
        ]),
      ),
      child:  Column(
        children: [
          SizedBox(height: size.height/6.7,),
          Image.asset(AppAssets.kLogoPath,width: size.width,height: size.height/2,),
          Text('Grand Coffee')
        ],
      ),
    );
  }
}
