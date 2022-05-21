import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/view/log_in_page.dart';
import 'package:shopapp/widget/TextForm.dart';
import 'package:shopapp/widget/button.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  final Function() onClickSignIn;

//  TextEditingController email = TextEditingController();
  //TextEditingController password = TextEditingController();

  SignupPage({Key? key, required this.onClickSignIn}) : super(key: key);
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 0),
            child: Column(
              children: [
                Image.asset("assets/welcome.png"),
                const SizedBox(height: 20),
                TextForm(isObscureText: false, txt: "Email", controller: email),
                const SizedBox(height: 20),
                TextForm(
                    isObscureText: true, txt: "Password", controller: password),
                const SizedBox(height: 40),
                prplButton(height: 50, ontap: () => signup(), txt: "Signup"),
                RichText(
                  text: TextSpan(
                    text: 'have an account? ',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'SignIn',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 108, 99, 225),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => widget.onClickSignIn()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
