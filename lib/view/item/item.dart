import 'package:flutter/material.dart';
// import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/item/widget/itemwidget.dart';
import 'package:oneres_newuiversion/view/item/widget/itemwidget2.dart';
import 'package:oneres_newuiversion/view/item/widget/itemwidget3.dart';
import 'package:oneres_newuiversion/view/item/widget/itemwidget4.dart';
import 'package:oneres_newuiversion/view/item/widget/itemwidget5.dart';

class NeutronMenuItem extends StatelessWidget {
  const NeutronMenuItem({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: const Color(0xff17181f),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ItemWidget(),
            SizedBox(
              width: 40,
            ),
            ItemWidget2(),
            SizedBox(
              width: 40,
            ),
            ItemWidget3(),
            SizedBox(
              width: 40,
            ),
            ItemWidget4(),
            SizedBox(
              width: 40,
            ),
            ItemWidget5(
              image: 'items/1.png',
              title: 'Original Burger',
              price: '\$5.99',
              item: '11 item',
            )
          ]),
        ],
      ),
    );
  }
}
