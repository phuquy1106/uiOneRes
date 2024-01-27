import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/view/slider_button/widget/slider.dart';

import '../../utils/colorutils.dart';

class SliderButtonPage extends StatelessWidget {
  const SliderButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderButton(
            action: () {
              ///Do something here OnSlide
              print("working");
            },

            ///Put label over here
            label: const Text(
              "Slide to cancel !",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: const Center(
                child: Icon(
              Icons.power_settings_new,
              color: Colors.white,
              size: 40.0,
              semanticLabel: 'Text to announce in accessibility modes',
            )),

            //Put BoxShadow here
            boxShadow: const BoxShadow(
              color: Colors.black,
              blurRadius: 4,
            ),

            //Adjust effects such as shimmer and flag vibration here
            shimmer: true,
            vibrationFlag: true,

            ///Change All the color and size from here.
            width: 230,
            buttonColor: const Color(0xffd60000),
            backgroundColor: const Color(0xff534bae),
            highlightedColor: Colors.white,
            baseColor: Colors.red,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Example of a wide button"),
          ),
          SliderButton(
            action: () {
              ///Do something here OnSlide
              print("working");
            },

            ///Put label over here
            label: const Text(
              "Slide to cancel !",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            buttonWidth: 84,
            height: 44,
            buttonSize: 44,

            //Put BoxShadow here
            boxShadow: const BoxShadow(
              color: Colors.black,
              blurRadius: 4,
            ),

            //Adjust effects such as shimmer and flag vibration here
            shimmer: true,
            vibrationFlag: true,

            ///Change All the color and size from here.
            width: 230,
            buttonColor: const Color(0xffd60000),
            backgroundColor: const Color(0xff534bae),
            highlightedColor: Colors.white,
            baseColor: Colors.red,
            child: Container(
              width: 80,
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.power_settings_new,
                color: Colors.white,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
