import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 120,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: check,
          onChanged: (bool value) {
            setState(() {
              check = value;
            });
          },
          thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return const Icon(
                Icons.check,
                color: Colors.black,
              );
            }
            return const Icon(Icons.close, color: Colors.black);
          }),
        ),
      ),
    );
  }
}
