import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String? label;
  final IconData? iconData;
  final bool? isObscure;
  const CustomField(
      {Key? key,
      @required this.label,
      @required this.iconData,
      @required this.isObscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: TextField(
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        obscureText: isObscure!,
        decoration: InputDecoration(
            labelText: label!,
            labelStyle: TextStyle(
              color: Colors.grey[500],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF9E9E9E),
                width: 2,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF9E9E9E),
                width: 2,
              ),
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF9E9E9E),
                width: 2,
              ),
            ),
            suffixIcon: Icon(
              iconData!,
              color: Colors.grey[500],
            )),
      ),
    );
  }
}
