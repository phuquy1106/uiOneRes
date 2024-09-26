import 'package:board_datetime_picker/board_datetime_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  await showBoardDateTimePicker(
                      context: context,
                      pickerType: DateTimePickerType.datetime,
                      options: BoardDateTimeOptions(
                          languages: BoardPickerLanguages(today: 'anh long'),
                          activeColor: Colors.green,
                          foregroundColor: Colors.blue,
                          backgroundDecoration:
                              BoxDecoration(color: Colors.blue),
                          backgroundColor: Colors.blue));
                },
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
