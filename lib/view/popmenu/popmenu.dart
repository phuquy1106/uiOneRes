import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';
import 'package:oneres_newuiversion/view/popmenu/widget/popmenuwidget.dart';

import '../listable_menu/listable_menu.dart';

class PopMenuPage extends StatefulWidget {
  const PopMenuPage({super.key});

  @override
  State<PopMenuPage> createState() => _PopMenuPageState();
}

class _PopMenuPageState extends State<PopMenuPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
        backgroundColor: ColorTheme.mainBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuDropdown(
              buttonTitle: '1231231',
              onPressed: (p0) {},
              dropdownWidth: 200,
              dropdownBackgroundColor: Colors.amber,
              functions: [
                () async {
                  showDialog(
                      context: context,
                      builder: (context) => const ListableMenuPage());
                },
                () async {
                  showDialog(
                      context: context,
                      builder: (context) => const ListableMenuPage());
                },
                () async {
                  showDialog(
                      context: context,
                      builder: (context) => const ListableMenuPage());
                }
              ],
              text: const [
                Text('321321312', style: TextStyle(color: Colors.red)),
                Text('321321312', style: TextStyle(color: Colors.red)),
                Text('321321312', style: TextStyle(color: Colors.red))
              ],
              // dropdownItems: [
              //   ListTile(
              //     onTap: () async {
              //       showDialog(
              //           context: context,
              //           builder: (context) => const ListableMenuPage());
              //     },
              //     title: const Text('321321312',
              //         style: TextStyle(color: Colors.red)),
              //   ),
              //   ListTile(
              //     onTap: () {},
              //     title: const Text('321321312',
              //         style: TextStyle(color: Colors.red)),
              //   ),
              //   ListTile(
              //     onTap: () {},
              //     title: const Text('321321312',
              //         style: TextStyle(color: Colors.red)),
              //   ),
              //   ListTile(
              //     onTap: () {},
              //     title: const Text('321321312',
              //         style: TextStyle(color: Colors.red)),
              //   )
              // ]
            )
          ],
        ),
      ),
    );
  }
}
