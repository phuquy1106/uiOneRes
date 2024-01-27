import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/model/table_model.dart';

class ListTableMenuWidget extends StatefulWidget {
  const ListTableMenuWidget({super.key, required this.list1});
  final UserData list1;
  @override
  State<ListTableMenuWidget> createState() => _ListTableMenuWidgetState();
}

class _ListTableMenuWidgetState extends State<ListTableMenuWidget> {
  bool check = true;
  bool check2 = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        check = !value;
        setState(() {});
      },
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 45,
        decoration: BoxDecoration(
          border: const Border(
              top: BorderSide(width: 0.1, color: Colors.black),
              bottom: BorderSide(width: 0.1, color: Colors.black)),
          color: check ? const Color(0xff262837) : const Color(0xffbbc1c7),
        ),
        child: Row(
          children: [
            Expanded(
                child: Align(
                    child: Text(
              widget.list1.id.toString(),
              style: TextStyle(
                  color: !check
                      ? const Color(0xff000000)
                      : const Color(0xffffffff)),
            ))),
            const SizedBox(width: 10),
            Expanded(
                child: Align(
                    child: Text(
              widget.list1.email,
              style: TextStyle(
                  color: !check
                      ? const Color(0xff000000)
                      : const Color(0xffffffff)),
            ))),
            const SizedBox(width: 10),
            Expanded(
                child: Switch(
              value: check2,
              onChanged: (bool value) {
                setState(() {
                  check2 = value;
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
            )),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color(0xff56b49e),
                      border: Border.all(width: 0.5, color: Color(0xff56b49e)),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.copy,
                    color: Color(0xffffffff),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
