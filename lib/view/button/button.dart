import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/fonts.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonWidget2.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonwidget.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonwidget3.dart';
import 'package:lottie/lottie.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonwidget4.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonwidget5.dart';
import 'package:oneres_newuiversion/view/button/widget/buttonwidget6.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  late bool check;
  late bool check2;
  late bool check3;

  @override
  void initState() {
    check = false;
    check2 = false;
    check3 = setStatus(check);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: ColorTheme.mainBackground),
      backgroundColor: Color(0xff017181f),
      body: Row(
        children: [
          Column(
            children: [
              ButtonWidget(
                onHover: (p0) {
                  check2 = !p0;
                  setState(() {});
                },
                onTap: () {},
                text: 'Add New',
                widget: const Icon(Icons.add),
                color1: check2
                    ? const [
                        Color.fromARGB(255, 4, 86, 239),
                        Color.fromARGB(255, 244, 196, 196)
                      ]
                    : const [Color(0xfff4c4f3), Color(0xfffc67fa)],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                onHover: (p0) {
                  check2 = !p0;
                  setState(() {});
                },
                onTap: () {},
                text: 'Thông Báo',
                widget: const Icon(Icons.notifications_none),
                color1: check2
                    ? const [
                        Color(0xff5433FF),
                        Color(0xff20BDFF),
                        Color(0xffA5FECB),
                      ]
                    : const [
                        Color(0xffA5FECB),
                        Color(0xff20BDFF),
                        Color(0xff5433FF),
                      ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                onHover: (p0) {
                  check2 = !p0;
                  setState(() {});
                },
                onTap: () {},
                text: 'Delete',
                widget: const Icon(
                  Icons.delete_outline_sharp,
                ),
                color1: check2
                    ? const [Color(0xffFF4B2B), Color(0xffFF416C)]
                    : const [Color(0xffFF416C), Color(0xffFF4B2B)],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                onHover: (p0) {
                  check2 = !p0;
                  setState(() {});
                },
                onTap: () {
                  check = true;
                  setState(() {});
                  Future.delayed(const Duration(seconds: 5)).then((value) {
                    check = false;
                    setState(() {
                      return;
                    });
                  });
                },
                text: 'Save',
                widget: Lottie.asset('animation/dowload.json', animate: check),
                color1: check2
                    ? const [
                        Color(0xff78ffd6),
                        Color(0xffa8ff78),
                      ]
                    : const [Color(0xffa8ff78), Color(0xff78ffd6)],
              ),
            ],
          ),
          const SizedBox(
            width: 200,
          ),
          const Column(
            children: [
              ButtonWidget2(
                color: Color(0xff42cd9e),
                text: 'Add New',
                widget: Icon(Icons.add, color: ColorTheme.colorIcon),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget2(
                color: Color(0xffee4b4b),
                text: 'Delete',
                widget: Icon(Icons.delete, color: ColorTheme.colorIcon),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget2(
                color: Color(0xff42abd0),
                text: 'Thông Báo',
                widget: Icon(Icons.notifications, color: ColorTheme.colorIcon),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget2(
                color: Color(0xffeab006),
                text: 'Save',
                widget: Icon(Icons.save_alt, color: ColorTheme.colorIcon),
              )
            ],
          ),
          const SizedBox(
            width: 200,
          ),
          const Column(
            children: [
              ButtonWidget3(
                color: Color(0xff42cd9e),
                text: 'Add New',
                widget: Icon(Icons.add, color: Color(0xff42cd9e)),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget3(
                color: Color(0xffee4b4b),
                text: 'Delete',
                widget: Icon(Icons.delete, color: Color(0xffee4b4b)),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget3(
                color: Color(0xff42abd0),
                text: 'Thông Báo',
                widget: Icon(Icons.add, color: Color(0xff42abd0)),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget3(
                color: Color(0xffeab006),
                text: 'Thông Báo',
                widget: Icon(Icons.add, color: Color(0xffeab006)),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ButtonWidget4(
                  onHover: (p0) {
                    check2 = !p0;
                    setState(() {});
                  },
                  onTap: () {},
                  text: 'Add New',
                  widget: const Icon(Icons.add),
                  color1: check2
                      ? const [
                          Color.fromARGB(255, 4, 86, 239),
                          Color.fromARGB(255, 244, 196, 196)
                        ]
                      : const [Color(0xfff4c4f3), Color(0xfffc67fa)],
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget4(
                  onHover: (p0) {
                    check2 = !p0;
                    setState(() {});
                  },
                  onTap: () {},
                  text: 'Thông Báo',
                  widget: const Icon(Icons.notifications_none),
                  color1: check2
                      ? const [
                          Color(0xff5433FF),
                          Color(0xff20BDFF),
                          Color(0xffA5FECB),
                        ]
                      : const [
                          Color(0xffA5FECB),
                          Color(0xff20BDFF),
                          Color(0xff5433FF),
                        ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget4(
                  onHover: (p0) {
                    check2 = !p0;
                    setState(() {});
                  },
                  onTap: () {},
                  text: 'Delete',
                  widget: const Icon(
                    Icons.delete_outline_sharp,
                  ),
                  color1: check2
                      ? const [Color(0xffFF4B2B), Color(0xffFF416C)]
                      : const [Color(0xffFF416C), Color(0xffFF4B2B)],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      check3 = setStatus(check3);
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xff1f1d2b),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: check3
                              ? Border.all(width: 2, color: Color(0xffea7c69))
                              : Border.all()),
                      child: const Text(
                        'Đồ Ăn',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: FontFamily.timesNewRoman,
                            fontWeight: FontWeight.w200),
                      ),
                    )),
                ButtonWidget4(
                  textColor: Colors.white,
                  onHover: (p0) {
                    check2 = !p0;
                    setState(() {});
                  },
                  onTap: () {
                    check = true;
                    setState(() {});
                    Future.delayed(const Duration(milliseconds: 5200))
                        .then((value) {
                      check = false;
                      setState(() {
                        return;
                      });
                    });
                  },
                  text: 'Save',
                  widget:
                      Lottie.asset('animation/dowload.json', animate: check),
                  color1: check2
                      ? const [
                          Color(0xffea7c69),
                          Color(0xffea7c69),
                        ]
                      : const [Color(0xffea7c69), Color(0xffea7c69)],
                ),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget5(
                  color: Colors.deepOrange,
                  text: '11111',
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonWidget5(
                  text: '11111',
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget6(
                  child: Icon(
                    Icons.delete_outline_outlined,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

bool setStatus(bool check) {
  return check = !check;
}
