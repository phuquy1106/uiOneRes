import 'package:flutter/material.dart';

import '../../../gen/fonts.gen.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 30,
              decoration: const BoxDecoration(
                  color: Color(0xff33414c),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xff33414c),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                ),
                Container(
                  width: 150,
                  height: 170,
                  margin: const EdgeInsets.only(left: 5),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: Color(0xff33414c),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'A1',
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: FontFamily.inter,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300,
                                  color: color),
                            ),
                          ),
                          Container(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                'Remain: 400.000',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: FontFamily.inter,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: color),
                              )),
                          Container(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timelapse_sharp,
                                    color: color,
                                  ),
                                  Text(
                                    '13:00',
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: FontFamily.inter,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: color),
                                  ),
                                ],
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Badge(
                                isLabelVisible: false,
                                child: Icon(
                                  Icons.notification_add,
                                  color: color,
                                  size: 26,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Badge(
                                isLabelVisible: false,
                                child: Icon(
                                  Icons.notification_add,
                                  color: color,
                                  size: 26,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Badge(
                                isLabelVisible: false,
                                child: Icon(
                                  Icons.notification_add,
                                  color: color,
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                          //  const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 170,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      border: Border.all(width: 0.05)),
                ),
                Container(
                  width: 30,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Color(0xff33414c),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 100,
              height: 30,
              decoration: const BoxDecoration(
                  color: Color(0xff33414c),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
            ),
          ],
        ),
      ],
    );
  }
}
