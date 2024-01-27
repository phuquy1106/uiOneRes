import 'package:flutter/material.dart';

class ButtonLoadingWidget extends StatelessWidget {
  const ButtonLoadingWidget(
      {super.key, this.color, this.child, this.onPressed});
  final Color? color;
  final Widget? child;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: color!, width: 2),
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(4, 5), blurRadius: 4, color: Color(0xff000000))
            ],
            color: color),
        child: child,
      ),
    );
  }
}
