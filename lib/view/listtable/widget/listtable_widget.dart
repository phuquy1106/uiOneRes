import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../model/table_model.dart';

class UserDataSource extends DataTableSource {
  final List<UserData> _userDataList;
  UserDataSource(this._userDataList);

  @override
  DataRow? getRow(int index) {
    if (index >= _userDataList.length) {
      return null;
    }
    final userData = _userDataList[index];
    return DataRow2.byIndex(
      onSelectChanged: (value) {},
      index: index,
      cells: [
        DataCell(Text(userData.id.toString())),
        DataCell(Text(userData.name)),
        DataCell(Text(userData.email)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _userDataList.length;

  @override
  int get selectedRowCount => 0;
}
