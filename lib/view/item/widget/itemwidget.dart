import 'package:flutter/material.dart';

import '../../../gen/fonts.gen.dart';
import '../../../utils/colorutils.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 140,
        height: 150,
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
            color: ColorTheme.itemBackground,
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                const SizedBox(height: 85),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Text(
                    'Món ăn dân dã',
                    maxLines: 3,
                    style: TextStyle(
                        color: Color.fromARGB(255, 216, 216, 216),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.robo),
                    textAlign: TextAlign.center,
                  ),
                )),
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  child: const Text(
                    '\$ 20.000',
                    style: TextStyle(
                        color: ColorTheme.negativeText,
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                        fontFamily: FontFamily.timesNewRoman),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Positioned(
              top: -50,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/img/drink.jpg',
                ),
                radius: 55,
              ),
            )
          ],
        ),
      ),
    );
  }
}
