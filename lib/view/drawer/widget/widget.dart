import 'package:flutter/material.dart';

class PopupMenuApp extends StatefulWidget {
  const PopupMenuApp({super.key});

  @override
  State<PopupMenuApp> createState() => _PopupMenuAppState();
}

class _PopupMenuAppState extends State<PopupMenuApp> {
  late bool isCheck = false;
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PopupMenuButton')),
      body: Center(
          child: MenuAnchor(
        alignmentOffset: const Offset(100, -25),
        childFocusNode: _buttonFocusNode,
        menuChildren: [
          MouseRegion(
            
              onEnter: (event) {
                isCheck = true;
                setState(() {});
              },
              onExit: (event) {
                isCheck = false;
                setState(() {});
              },
              child: Container(
                color: isCheck ? Colors.amber : Colors.red,
                child: Text("2847287"),
              )),
          Text("14658578"),
          Text("13466347"),
          Text("1467576"),
        ],
        builder: (context, controller, child) {
          return TextButton(
            focusNode: _buttonFocusNode,
            onPressed: () {
              if (controller.isOpen) {
                controller.close();
              } else {
                controller.open();
              }
            },
            child: const Text('OPEN MENU'),
          );
        },
      )

          // PopupMenuButton<String>(
          //   itemBuilder: (BuildContext context) {
          //     return <PopupMenuEntry<String>>[
          //       PopupMenuItem<String>(
          //         value: 'option1',
          //         child: Text('Option 1'),
          //       ),
          //       PopupMenuItem<String>(
          //         value: 'option2',
          //         child: Text('Option 2'),
          //       ),
          //     ];
          //   },
          //   child: TextButton(
          //     onPressed: () {},
          //     child: Text('Open Menu'),
          //   ),
          // ),
          ),
    );
  }
}
