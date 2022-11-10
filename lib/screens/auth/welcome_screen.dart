import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamelive/screens/screens.dart';
import 'package:gamelive/utils/constants.dart';
import 'package:gamelive/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              height: 64,
                              child: Image.asset('assets/icons/joystick.png',
                                  color: Colors.white))),
                      const SizedBox(
                        height: 32,
                      ),
                      Text('Welcome to\n livegame',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                RoundedButton(
                    text: "Log In",
                    color: Colors.white12,
                    onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => LoginScreen()))),
                const SizedBox(height: 16),
                RoundedButton(
                    text: "Sign Up",
                    color: kPrimaryColor,
                    onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) =>
                                SignupScreen()))),
              ]),
        ),
      ),
    );
  }
}
