import 'package:flutter/material.dart';
import 'package:shopapp/view/log_in_page.dart';
import 'package:shopapp/view/sign_up_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) => isLogin
      ? LoginPage(
          onClickSignUp: toggle,
        )
      : SignupPage(onClickSignIn: toggle);

  void toggle() => setState(() {
        isLogin = !isLogin;
      });
}
