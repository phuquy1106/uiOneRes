import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';

class ButtonWidget2 extends StatelessWidget {
  const ButtonWidget2({super.key, this.text, this.color, this.widget});
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
            width: 150,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white),
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
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: widget,
          )
        ],
      ),
    );
  }
}
