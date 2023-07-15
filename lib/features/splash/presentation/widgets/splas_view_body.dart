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
      child: const Column(
        children: [

        ],
      ),
    );
  }
}
