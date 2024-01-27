import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/model/table_model.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/tablenewm/widget/tablewidget.dart';

class TableNewPage extends StatelessWidget {
  const TableNewPage({super.key});

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
              decoration: BoxDecoration(
                color: Color(0xff1e1e1f),
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
                .map((e) => TableNewWidget(
                      index: e.id,
                      list1: e,
                    ))
                .toList(),
          ]),
        ),
      ),
    );
  }
}
