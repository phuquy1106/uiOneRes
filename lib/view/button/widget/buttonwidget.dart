import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.text,
    this.widget,
    this.color1,
    this.onTap,
    this.onHover,
  });
  final String? text;
  final Widget? widget;
  final List<Color>? color1;
  final VoidCallback? onTap;
  final Function(bool)? onHover;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: 220,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(colors: color1!)),
        child: TextButton(
          onHover: onHover,
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(220, 50),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          onPressed: onTap,
          child: SizedBox(
            width: 220,
            height: 50,
            child: Center(
              child: Text(
                text!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: FontFamily.timesNewRoman,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: -4,
        right: -4,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: widget),
          ),
        ),
      )
    ]);
  }
}
