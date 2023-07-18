import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/string.dart';
import '../../../../core/utils/styles.dart';


class LandingButton extends StatelessWidget {
  const LandingButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 27,
        left: size.height * 0.03,
        child: InkWell(
          onTap: (){
            GoRouter.of(context).push(AppStrings.kLoginRoute);
          },
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
            child: const Text(AppStrings.kLandingButton,style: Styles.textStyle20,),
          ),
        ));
  }
}
