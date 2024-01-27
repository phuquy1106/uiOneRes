import 'package:flutter/material.dart';

import '../../../utils/colorutils.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff1f2029),
        ),
        child: StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Tìm Kiếm.....',
                        hintStyle: TextStyle(
                          color: ColorTheme.colorText,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}
