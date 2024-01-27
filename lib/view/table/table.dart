import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/table/widget/tablewidget.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.mainBackground,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      body: const SingleChildScrollView(
          child: Row(
        children: [
          Column(
            children: [
              TableWidget(
                color: Color(0xfff59539),
              ),
              SizedBox(
                height: 30,
              ),
              TableWidget(
                color: Color(0xff06c5a7),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              TableWidget(
                color: Color(0xff9fbd34),
              ),
              SizedBox(
                height: 30,
              ),
              TableWidget(
                color: Color(0xffb0dae7),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              TableWidget(
                color: Color(0xffe35656),
              ),
              SizedBox(
                height: 30,
              ),
              TableWidget(
                color: Color(0xff36ae54),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              TableWidget(
                color: Color(0xff40acd2),
              ),
              SizedBox(
                height: 30,
              ),
              TableWidget(
                color: Color(0xffd34e32),
              )
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Column(
            children: [
              TableWidget(
                color: Color(0xffee629e),
              ),
              SizedBox(
                height: 30,
              ),
              TableWidget(
                color: Color(0xff2a5ec6),
              )
            ],
          ),
        ],
      )),
    );
  }
}
