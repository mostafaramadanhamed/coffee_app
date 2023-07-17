import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'animated_text.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with TickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    navigateToLanding();
    initAnimation();
    super.initState();
  }
@override
  void dispose() {
   animationController.dispose();
    super.dispose();
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
          AnimatedText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
  void navigateToLanding() {
    Future.delayed(const Duration(milliseconds: 3000,),(){
      GoRouter.of(context).push(AppStrings.kLandingRoute);
    });
  }
  void initAnimation() {
    animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 900));
    slidingAnimation=Tween<Offset>(
      begin:const Offset(0, 5) ,
      end:Offset.zero ,
    ).animate(animationController);
    animationController.forward();
  }
}

