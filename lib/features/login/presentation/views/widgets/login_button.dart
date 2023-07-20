

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/string.dart';
import '../../../../../core/utils/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.size, required this.formKey,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Size size;
  final GlobalKey<FormState> formKey ;
  @override
  Widget build(BuildContext context) {

    return TextButton(onPressed: () {
      if(formKey.currentState!.validate()){
      if (emailController.text == 'mo' && passwordController.text == '00') {
        GoRouter.of(context).push(AppStrings.kHomeRoute);
      }
    }
    },
      style: TextButton.styleFrom(
          backgroundColor: AppColors.kLoginTextFieldColor,
          elevation: 8,
          foregroundColor: AppColors.kSecondaryColor,
          shadowColor: AppColors.kSecondaryColor,
          minimumSize: Size(size.width/3, size.height/17),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32),side: const BorderSide(
            width: 2,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColors.kSecondaryColor,
          ))

      ), child: const Text("Enter 🍦",style: Styles.textStyle16,),
    );
  }
}
