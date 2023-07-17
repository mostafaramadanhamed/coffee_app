import 'package:coffee_app/core/utils/string.dart';
import 'package:coffee_app/features/splash/presentation/landing_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/splash_view.dart';


abstract class AppRouter{

  static final router=GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state)=>const SplashView() ,),
    GoRoute(path: AppStrings.kLandingRoute,builder: (context,state)=>const LandingView()),
    // GoRoute(path: '/',builder: (context,state)=>const SplashView() ,),
  ],);
}