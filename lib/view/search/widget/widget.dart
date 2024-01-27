import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/utils/colorutils.dart';

class RoundSearchIcon extends StatelessWidget {
  const RoundSearchIcon({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 45,
        height: 45,
        decoration: const BoxDecoration(
          color: Color(0xff353535),
        ),
        child: const Icon(
          Icons.search_rounded,
          color: ColorTheme.colorIconButton,
        ),
      ),
    );
  }
}
