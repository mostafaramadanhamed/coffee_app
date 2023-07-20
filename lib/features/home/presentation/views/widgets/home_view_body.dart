import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kFirstGradientColor,
                child: Image.asset(AppAssets.kLogoPath),
              ),

            ],
          )
        ],
      ),
    );
  }
}
