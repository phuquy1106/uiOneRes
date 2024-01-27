import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/view/swtich/widget/widget.dart';

import '../../utils/colorutils.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchWidget(),
        ],
      ),
    );
  }
}
