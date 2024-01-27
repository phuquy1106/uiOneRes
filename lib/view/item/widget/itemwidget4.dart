import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/assets.gen.dart';
import '../../../utils/colorutils.dart';
import '../../../gen/fonts.gen.dart';

class ItemWidget4 extends StatelessWidget {
  const ItemWidget4({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 200,
          width: 120,
          decoration: BoxDecoration(
            color: ColorTheme.itemBackground,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 8, left: 8, right: 8),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 100,
              width: 100,
              child: Image.asset(
                Assets.img.default2.path,
                fit: BoxFit.fill,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                margin: const EdgeInsets.only(top: 8),
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
