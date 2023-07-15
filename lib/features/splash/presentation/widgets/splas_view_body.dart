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
          const Color(0xFFF9EBDF),
          const Color(0xFFECCBAC).withOpacity(0.81),
        ]),
      ),
      child:  Column(
        children: [
          SizedBox(height: size.height/6.7,),
          Image.asset('assets/images/logo.png',width: size.width,height: size.height/2,),
          Text('Grand Coffee')
        ],
      ),
    );
  }
}
