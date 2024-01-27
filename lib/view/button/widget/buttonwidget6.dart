import 'package:flutter/material.dart';

class ButtonWidget6 extends StatelessWidget {
  const ButtonWidget6({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xff1f1d2b),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(width: 0.5, color: Colors.deepOrange)),
            child: child));
  }
}
