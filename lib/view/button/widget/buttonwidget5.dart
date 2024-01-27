import 'package:flutter/material.dart';

import '../../../gen/fonts.gen.dart';

class ButtonWidget5 extends StatelessWidget {
  const ButtonWidget5({super.key, this.text, this.color});
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Container(
            width: 230,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: Colors.deepOrange),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: color),
            child: Align(
              child: Text(
                text!,
                style: const TextStyle(
                    fontFamily: FontFamily.timesNewRoman,
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
