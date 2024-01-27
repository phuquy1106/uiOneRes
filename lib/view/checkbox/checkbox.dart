import 'package:flutter/material.dart';

import '../../utils/colorutils.dart';

class CheckBoxPage extends StatefulWidget {
  const CheckBoxPage({super.key});

  @override
  State<CheckBoxPage> createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  late bool check = false;
  String? valueCheck;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: check,
                  onChanged: (value) {
                    check = value!;
                    setState(() {});
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Colors.red,
                  shape: CircleBorder(),
                  checkColor: Colors.white,
                ),
                const SizedBox(
                  width: 30,
                ),
                Checkbox(
                  value: check,
                  onChanged: (value) {
                    check = value!;
                    setState(() {});
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  checkColor: Colors.white,
                ),
                const SizedBox(
                  width: 30,
                ),
                Checkbox(
                  value: check,
                  onChanged: (value) {
                    check = value!;
                    setState(() {});
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Đặt bán kính viền ở đây
                  ),
                  activeColor: Colors.green.shade200,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  checkColor: Colors.white,
                ),
                const SizedBox(
                  width: 30,
                ),
                Checkbox(
                  value: check,
                  onChanged: (value) {
                    check = value!;
                    setState(() {});
                  },
                  activeColor: ColorTheme.negativeText,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  checkColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
