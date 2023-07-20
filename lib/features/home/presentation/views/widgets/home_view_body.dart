import 'package:coffee_app/core/utils/assets.dart';
import 'package:coffee_app/core/utils/colors.dart';
import 'package:coffee_app/core/utils/styles.dart';
import 'package:coffee_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding:const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 45,
          ),
          const TopRowHomeView(),
          const SizedBox(
            height: 20,
          ),
          const WelcomeText(),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFiled(hint: '  🔎 Search '),
          const SizedBox(
            height: 15,
          ),
          Text('Categories',style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.kPrimaryColor),),
          const SizedBox(
            height: 6,
          ),
          Row(
          children: [
            CategoryItem(),
            CategoryItem(),
            CategoryItem(),
          ],
          )
        ],
      ),
    );
  }
}

class CategoryItem extends StatefulWidget {
  const CategoryItem({
    super.key,
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
   bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){
          setState((){
            isClicked =! isClicked;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 5),
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
           color: isClicked?AppColors.kSecondaryColor:AppColors.kCategoriesRowColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Text('Coffee',style: Styles.textStyle14.copyWith(
            fontSize: 13,
            color: isClicked?AppColors.kFirstGradientColor:AppColors.kPrimaryColor ,
          ),),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Good Morning, Mostafa ☕',style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w900,color: AppColors.kPrimaryColor,),);
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
