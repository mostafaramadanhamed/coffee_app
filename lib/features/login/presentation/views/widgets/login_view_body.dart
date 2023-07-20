import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../splash/presentation/views/widgets/background_image.dart';
import 'login_container.dart';
class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key, }) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
 final TextEditingController emailController=TextEditingController();
 final TextEditingController passwordController=TextEditingController();
 final GlobalKey<FormState> formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    final  size= MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(size: size,imagePath: AppAssets.kLoginImage,),
        LoginContainer(size: size, emailController: emailController, passwordController: passwordController,formKey: formKey,),
      ],
    );
  }
}

