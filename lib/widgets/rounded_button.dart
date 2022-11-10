// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onPressed;

  const RoundedButton({
    Key? key,
    @required this.text,
    @required this.color,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: color!,
        clipBehavior: Clip.antiAlias,
        animationDuration: const Duration(seconds: 2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: InkWell(
          onTap: () => onPressed!(),
          child: SizedBox(
            height: 55,
            child: Center(
              child: Text(text!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ),
          ),
        ));
  }
}
