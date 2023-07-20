import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          TopRowHomeView(),
        ],
      ),
    );
  }
}

class TopRowHomeView extends StatelessWidget {
  const TopRowHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProfileImage(),
        SizedBox(width: 20,),
        Icon(Icons.location_on_rounded,color: AppColors.kSecondaryColor,size: 20,),
        SizedBox(width: 15,),
        Text('Cairo,Egypt ',style: Styles.textStyle14,),
        Spacer(),
        Icon(Icons.notifications_active_outlined,color: AppColors.kSecondaryColor,size: 24,),
      ],
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColors.kFirstGradientColor,
      child: Image.asset(AppAssets.kLogoPath),
    );
  }
}
