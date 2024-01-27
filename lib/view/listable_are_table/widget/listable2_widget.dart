import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/model/table_model.dart';

class ListTableWidget2 extends StatefulWidget {
  const ListTableWidget2({super.key, required this.list1});
  final UserData list1;
  @override
  State<ListTableWidget2> createState() => _ListTableWidget2State();
}

class _ListTableWidget2State extends State<ListTableWidget2> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        check = !value;
        setState(() {});
      },
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 45,
        decoration: BoxDecoration(
          border: const Border(
              top: BorderSide(width: 0.1, color: Colors.black),
              bottom: BorderSide(width: 0.1, color: Colors.black)),
          color: check ? const Color(0xff262837) : const Color(0xffe6e7e9),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 2,
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
                flex: 2,
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
                flex: 2,
                child: Row(
                  children: [
                    Align(
                        child: Text(
                      widget.list1.name,
                      style: TextStyle(
                          color: !check
                              ? const Color(0xff000000)
                              : const Color(0xffffffff)),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff3c3ec1)),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xffffffff),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffebbe7a)),
                        child: const Icon(
                          Icons.edit,
                          color: Color(0xffffffff),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffd64646)),
                        child: const Icon(
                          Icons.delete_outline,
                          color: Color(0xffffffff),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Color(0xff3c3ec1))),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xff3c3ec1),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Color(0xffebbe7a))),
                        child: const Icon(
                          Icons.edit,
                          color: Color(0xffebbe7a),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1.5, color: Color(0xffd64646))),
                        child: const Icon(
                          Icons.delete_outline,
                          color: Color(0xffd64646),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
