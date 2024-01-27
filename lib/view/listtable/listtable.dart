import 'package:flutter/material.dart';
import 'package:oneres_newuiversion/model/table_model.dart';
import '../../utils/colorutils.dart';
import 'widget/listtable_widget.dart';

class DataTableExample extends StatelessWidget {
  const DataTableExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.transparent),
      backgroundColor: ColorTheme.mainBackground,
      body: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(right: 120, left: 120),
                child: PaginatedDataTable(
                  header: const Align(child: Text('User Data')),
                  showCheckboxColumn: false,
                  rowsPerPage: 20,
                  availableRowsPerPage: const [10, 20, 30],
                  columns: const [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Email')),
                  ],
                  source: UserDataSource(userDataList),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
