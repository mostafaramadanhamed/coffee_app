import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/string.dart';
import 'package:flutter/material.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2,),(){

    });
    super.initState();
  }
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
          Text(AppStrings.kAppName),
        ],
      ),
    );
  }
}
