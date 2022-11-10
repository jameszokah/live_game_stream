import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamelive/screens/screens.dart';
import 'package:gamelive/widgets/rounded_button.dart';

import 'package:gamelive/utils/constants.dart';
import 'package:gamelive/widgets/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ))),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          CustomField(
                              label: "Email",
                              iconData: CupertinoIcons.mail,
                              isObscure: false),
                          CustomField(
                              label: "Username",
                              iconData: CupertinoIcons.person,
                              isObscure: false),
                          CustomField(
                              label: "Password",
                              iconData: Icons.remove_red_eye,
                              isObscure: true),
                          CustomField(
                              label: "Date of birth",
                              iconData: Icons.cake,
                              isObscure: false),
                        ])),
              ),
              RoundedButton(
                  text: "I have an account",
                  color: Colors.transparent,
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen()))),
              const SizedBox(height: 16),
              RoundedButton(
                  text: "Sign Up",
                  color: kPrimaryColor,
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => HomeScreen()))),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
