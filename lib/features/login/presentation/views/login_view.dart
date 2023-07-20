import 'package:coffee_app/features/login/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginViewBody(),
    );
  }
}
