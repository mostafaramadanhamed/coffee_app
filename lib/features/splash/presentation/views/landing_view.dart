import 'package:coffee_app/features/splash/presentation/views/widgets/landing_view_body.dart';
import 'package:flutter/material.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingViewBody(),
    );
  }
}
