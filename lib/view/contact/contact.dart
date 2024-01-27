import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/gen/assets.gen.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'widget/widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContactWidget(
                icon: Assets.icon.facebook
                    .svg(color: Color(0xff39579a), height: 45, width: 45),
                name: 'Facebook',
              ),
              const SizedBox(
                width: 20,
              ),
              const ContactWidget(
                name: 'Zalo',
              ),
              const SizedBox(
                width: 20,
              ),
              ContactWidget(
                icon: Assets.icon.telegram.svg(height: 45, width: 45),
                name: 'Telegram',
              ),
              const SizedBox(
                width: 20,
              ),
              ContactWidget(
                icon: Assets.icon.tiktok
                    .svg(color: Color(0xff000000), height: 45, width: 45),
                name: 'Tik Tok',
              ),
              const SizedBox(
                width: 20,
              ),
              ContactWidget(
                icon: Assets.icon.pinterest
                    .svg(color: Color(0xffe60023), height: 45, width: 45),
                name: 'Pinterest',
              ),
              const SizedBox(
                width: 20,
              ),
              ContactWidget(
                icon: Assets.icon.youtube
                    .svg(color: Color(0xffff0000), height: 45, width: 45),
                name: 'youtube',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
