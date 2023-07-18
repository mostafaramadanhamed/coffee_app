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
      ],
    );
  }
}
