import 'package:coffee_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../splash/presentation/widgets/background_image.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  size= MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(size: size,imagePath: AppAssets.kLoginImage,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 32,vertical:size.height/6),
          height: size.height/1.5,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.kLoginContainerColor.withOpacity(0.66),
            borderRadius: BorderRadius.circular(32),

          ),
        )
      ],
    );
  }
}
