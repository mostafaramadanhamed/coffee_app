

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/string.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'login_button.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    super.key,
    required this.size,
    required this.emailController,
    required this.passwordController,
  });

  final Size size;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32,vertical:size.height/6),
      padding: const EdgeInsets.symmetric(horizontal:14,vertical:40),
      height: size.height/1.7,
      width: size.width,
      decoration: BoxDecoration(
        color: AppColors.kLoginContainerColor.withOpacity(0.59),
        borderRadius: BorderRadius.circular(32),
      ),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const   Text('Login',style: Styles.textStyle18,),
            const   SizedBox(height: 38,),
            CustomTextFiled(hint: 'Email',onChange: (val){
              emailController.text=val;

            },),
            const  SizedBox(height: 22,),
            CustomTextFiled(hint: 'Password',onChange: (val){
              passwordController.text=val;
            },),
            const SizedBox(height: 40,),
            LoginButton(emailController: emailController, passwordController: passwordController, size: size),
            const  SizedBox(height: 22,),
            TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.kSecondaryColor,
              ), child: const Text('Don\'t have an account?',style: Styles.textStyle14,),),
          ],
        ),
      ),
    );
  }
}

