import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';
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
          padding: const EdgeInsets.symmetric(horizontal:14,vertical:40),
          height: size.height/1.7,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.kLoginContainerColor.withOpacity(0.59),
            borderRadius: BorderRadius.circular(32),
          ),
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Text('Login',style: Styles.textStyle18,),
                SizedBox(height: 38,),
                CustomTextFiled(hint: 'Email'),
                SizedBox(height: 22,),
                CustomTextFiled(hint: 'Password'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
