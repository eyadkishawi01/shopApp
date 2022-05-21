import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/view/home_page.dart';
import 'package:shopapp/view/sign_up_page.dart';
import 'package:shopapp/widget/TextForm.dart';
import 'package:get/get.dart';
import 'package:shopapp/widget/button.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onClickSignUp;

  const LoginPage({Key? key, required this.onClickSignUp}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
          child: Column(
            children: [
              Image.asset("assets/login.png", width: 500, height: 300),
              const SizedBox(height: 30),
              TextForm(
                  isObscureText: false, txt: "Username", controller: email),
              const SizedBox(height: 20),
              TextForm(
                  isObscureText: true, txt: "Password", controller: password),
              const SizedBox(height: 30),
              prplButton(height: 50, ontap: () => signIn(), txt: "Login"),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Signup now',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 108, 99, 225),
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => widget.onClickSignUp()),
                  ],
                ),
              ),
            ],
          ),
        )),
      )),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
  }
}
