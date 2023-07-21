import 'package:flutter/material.dart';

import '../../features/home/presentation/views/home_view.dart';

abstract class AppStrings{
  static const kAppName='Grand Coffee';
  static const kLandingRoute='/landingView';
  static const kLoginRoute='/loginView';
  static const kMainRoute='/mainView';
  static const kLandingButton ='Let\'s Go ☕';
  static const List<Widget> kPages = [
     HomeView(),
    Center(child: Text('Favorite')),
    Center(child: Text('Cart')),
    Center(child: Text('Profile')),
    // BookmarkScreen(),
    // FavoriteScreen(),
    // NewRecipeScreen(),
    // const SettingScreen(),
  ];
}