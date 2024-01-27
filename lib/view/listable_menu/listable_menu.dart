import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/model/table_model.dart';
import 'package:oneres_newuiversion/view/listable_menu/widget/listable_menu_widget.dart';

import '../../utils/colorutils.dart';

class ListableMenuPage extends StatelessWidget {
  const ListableMenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return Dialog(
      backgroundColor: ColorTheme.mainBackground,
      child: SingleChildScrollView(
        child: Container(
          width: widthScreen < 800 ? 290 : 1150,
          margin: const EdgeInsets.all(120),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: const Color(0xff1f1d2b),
              border: Border.all(width: 2, color: const Color(0xff1f1d2b))),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: 45,
              child: const Row(
                children: [
                  Expanded(
                    child: Align(
                      child: Text(
                        '222',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: FontFamily.timesNewRoman,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: Text(
                        '222',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: FontFamily.timesNewRoman,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Align(
                      child: Text(
                        '222',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: FontFamily.timesNewRoman,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Align(
                      child: Text(
                        'icon',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: FontFamily.timesNewRoman,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const Divider(
            //   color: Colors.black,
            // ),
            ...userDataList
                .map((e) => ListTableMenuWidget(
                      list1: e,
                    ))
                .toList()
          ]),
        ),
      ),
    );
  }
}
