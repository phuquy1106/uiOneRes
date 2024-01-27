import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/assets.gen.dart';
import '../../../utils/colorutils.dart';
import '../../../gen/fonts.gen.dart';

class ItemWidget2 extends StatelessWidget {
  const ItemWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            ClipOval(
              child: SizedBox(
                height: 100,
                width: 120,
                child: Image.asset(
                  Assets.img.default2.path,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                margin: const EdgeInsets.only(top: 10),
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
                ))
          ]),
        ));
  }
}
