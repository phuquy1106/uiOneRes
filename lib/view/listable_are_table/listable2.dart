import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/model/table_model.dart';
import 'package:oneres_newuiversion/view/listable_are_table/widget/listable2_widget.dart';

import '../../utils/colorutils.dart';

class Listable2Page extends StatelessWidget {
  const Listable2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(120),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: const Color(0xff1f1d2b),
              border: Border.all(width: 2, color: const Color(0xff1f1d2b))),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color(0xff262837),
              ),
              height: 45,
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
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
                    flex: 2,
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
                    flex: 2,
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
                ],
              ),
            ),
            // const Divider(
            //   color: Colors.black,
            // ),
            ...userDataList
                .map((e) => ListTableWidget2(
                      list1: e,
                    ))
                .toList()
          ]),
        ),
      ),
    );
  }
}
