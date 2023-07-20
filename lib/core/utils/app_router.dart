import 'package:coffee_app/core/utils/string.dart';
import 'package:coffee_app/features/home/presentation/views/home_view.dart';
import 'package:coffee_app/features/home/presentation/views/main_view.dart';
import 'package:coffee_app/features/login/presentation/views/login_view.dart';
import 'package:coffee_app/features/splash/presentation/views/landing_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';


abstract class AppRouter{

  static final router=GoRouter(routes: [
    GoRoute(path: '/',builder: (context,state)=>const SplashView() ,),
    GoRoute(path: AppStrings.kLandingRoute,builder: (context,state)=>const LandingView()),
    GoRoute(path: AppStrings.kLoginRoute,builder: (context,state)=>const LoginView()),
    GoRoute(path: AppStrings.kMainRoute,builder: (context,state)=>const MainView()),
    // GoRoute(path: '/',builder: (context,state)=>const SplashView() ,),
  ],);
}