import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, this.icon, this.name});
  final Widget? icon;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          icon!,
          const SizedBox(
            width: 20,
          ),
          Text(
            name!,
            style: const TextStyle(
                fontFamily: FontFamily.timesNewRoman,
                fontWeight: FontWeight.w400,
                color: ColorTheme.colorText,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
