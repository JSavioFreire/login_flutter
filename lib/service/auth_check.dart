import 'package:flutter/material.dart';
import 'package:login_flutter/screens/home_screen.dart';
import 'package:login_flutter/screens/login_screen.dart';
import 'package:login_flutter/service/auth_service.dart';
import 'package:login_flutter/widget/loading.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading) {
      return const LoadingWidget();
    } else if (auth.users == null) {
      return const LoginScreen();
    } else {
      return const HomeScreen();
    }
  }
}
