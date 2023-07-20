import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/string.dart';
import 'package:coffee_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../splash/presentation/views/widgets/background_image.dart';
class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key, }) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
 final TextEditingController emailController=TextEditingController();
 final TextEditingController passwordController=TextEditingController();

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
                TextButton(onPressed: (){
                  if(emailController.text=='mo'&& passwordController.text=='00'){
                    GoRouter.of(context).push(AppStrings.kHomeRoute);
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

                ), child: const Text("Enter",style: Styles.textStyle16,),
                ),
                const  SizedBox(height: 22,),
                TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.kSecondaryColor,
                ), child: const Text('Don\'t have an account?',style: Styles.textStyle14,),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
