import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LandingViewBody extends StatelessWidget {
  const LandingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          AppAssets.kLandingImage,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 10,
          left: size.height * 0.03,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFD1D0D7),
                borderRadius: BorderRadius.circular(32),
                  boxShadow: const [
                    BoxShadow(color: Color(0xff1B1B1B), spreadRadius: 2,)
                  ]
              ),

              width: size.width*0.9,
              height: size.height*0.083,
              child: const Text('data',style: Styles.textStyle20,),
            )),
      ],
    );
  }
}
