import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamelive/screens/screens.dart';
import 'package:gamelive/utils/constants.dart';
import 'package:gamelive/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  child: Text('Login',
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
                              label: "Password",
                              iconData: Icons.remove_red_eye,
                              isObscure: true),
                        ])),
              ),
              RoundedButton(
                  text: "Log In",
                  color: kPrimaryColor,
                  onPressed: () => Navigator.push(context, CupertinoPageRoute(builder: (context) => HomeScreen(),))),
            ],
          ),
        ),
      ),
    );
  }
}
