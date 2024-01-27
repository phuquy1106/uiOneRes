import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../../utils/colorutils.dart';

class ItemWidget3 extends StatelessWidget {
  const ItemWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipOval(
            child: Image.asset(
              Assets.img.default2.path,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              width: 120,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(203, 197, 197, 0.51),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Món ăn dân dã',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.timesNewRoman),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\$ 20.000',
                    style: TextStyle(
                        color: ColorTheme.negativeText,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        fontFamily: FontFamily.timesNewRoman),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
