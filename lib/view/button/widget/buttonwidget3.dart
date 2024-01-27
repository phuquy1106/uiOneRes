import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';

class ButtonWidget3 extends StatelessWidget {
  const ButtonWidget3({super.key, this.text, this.color, this.widget});
  final String? text;
  final Color? color;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(20))),
            child: widget,
          ),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(20)),
                color: color),
            child: Align(
              child: Text(
                text!,
                style: const TextStyle(
                    fontFamily: FontFamily.timesNewRoman,
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
