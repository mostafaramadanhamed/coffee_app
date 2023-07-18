import 'package:coffee_app/core/utils/app_router.dart';
import 'package:coffee_app/core/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: AppStrings.kAppName,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        textTheme:GoogleFonts.pollerOneTextTheme(),
      ),
    );
  }
}