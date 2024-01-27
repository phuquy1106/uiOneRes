import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';

import '../../../gen/assets.gen.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, this.icon, this.name});
  final Widget? icon;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      clipBehavior: Clip.hardEdge,
      onPressed: () {},
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: ColorTheme.colorIcon,
              shape: BoxShape.circle,
            ),
            child: FittedBox(
              fit: BoxFit.fill,
              child: ClipOval(
                child: Align(
                  alignment: Alignment.center,
                  child: icon ??
                      Image.asset(
                        Assets.img.zalo.path,
                        width: 40,
                        height: 40,
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name!,
            style: const TextStyle(
                fontFamily: FontFamily.timesNewRoman,
                color: ColorTheme.colorText,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
