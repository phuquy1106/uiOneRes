import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/view/buttonloading/widget/widget.dart';
import 'package:lottie/lottie.dart';
import '../../utils/colorutils.dart';

class ButtonLoadingPage extends StatefulWidget {
  const ButtonLoadingPage({super.key});

  @override
  State<ButtonLoadingPage> createState() => _ButtonLoadingPageState();
}

class _ButtonLoadingPageState extends State<ButtonLoadingPage> {
  late bool check = false;
  late bool check1 = false;
  late bool check2 = false;
  late bool check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonLoadingWidget(
              onPressed: () {
                check = true;
                setState(() {});
                Future.delayed(const Duration(milliseconds: 2200))
                    .then((value) {
                  check = false;
                  setState(() {
                    return;
                  });
                });
              },
              color: const Color(0xfff04b49),
              child: Lottie.asset('animation/delete2.json', animate: check),
            ),
            const SizedBox(
              width: 30,
            ),
            ButtonLoadingWidget(
              onPressed: () {
                check1 = true;
                setState(() {});
                Future.delayed(const Duration(milliseconds: 5200))
                    .then((value) {
                  check1 = false;
                  setState(() {
                    return;
                  });
                });
              },
              color: const Color(0xffd06b04),
              child: Lottie.asset('animation/dowload.json',
                  animate: check1, fit: BoxFit.fill),
            ),
            const SizedBox(
              width: 30,
            ),
            ButtonLoadingWidget(
              onPressed: () {
                check2 = true;
                setState(() {});
                Future.delayed(const Duration(seconds: 6)).then((value) {
                  check2 = false;
                  setState(() {
                    return;
                  });
                });
              },
              color: const Color(0xff279768),
              child: !check2
                  ? const Icon(
                      Icons.local_dining,
                      color: Colors.white,
                    )
                  : Lottie.asset('animation/loading.json',
                      animate: check2, fit: BoxFit.fill),
            ),
            const SizedBox(
              width: 30,
            ),
            ButtonLoadingWidget(
              onPressed: () {
                check3 = true;
                setState(() {});
                Future.delayed(const Duration(milliseconds: 4200))
                    .then((value) {
                  check3 = false;
                  setState(() {
                    return;
                  });
                });
              },
              color: const Color(0xff0b5e78),
              child: Lottie.asset('animation/complete.json',
                  animate: check3, fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
