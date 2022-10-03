import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TableInfo extends StatelessWidget {
  const TableInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: ListView(children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'Latest Solved Cases',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ]),
        DataTable(
          columns: [
            DataColumn(
                label: Text('Order ref',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('CASES',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Date',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            DataColumn(
                label: Text('Status',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('CDD1049')),
              DataCell(Text('Violence and sexual offences')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xffFFB020),
                  ),
                  child: Center(child: Text('PENDING')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1048')),
              DataCell(Text('Posession of weapons')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xff14B8A6),
                  ),
                  child: Center(child: Text('SOLVED')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1047')),
              DataCell(Text('Shoplifting')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xff14B8A6),
                  ),
                  child: Center(child: Text('SOLVED')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1046')),
              DataCell(Text('Shoplifting')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xffFFB020),
                  ),
                  child: Center(child: Text('PENDING')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1046')),
              DataCell(Text('Criminal damage and arson')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xffD14343),
                  ),
                  child: Center(child: Text('UNRESOLVED')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1044')),
              DataCell(Text('Anti-social behaviour')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xff14B8A6),
                  ),
                  child: Center(child: Text('SOLVED')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1044')),
              DataCell(Text('Anti-social behaviour')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xff14B8A6),
                  ),
                  child: Center(child: Text('SOLVED')))),
            ]),
            DataRow(cells: [
              DataCell(Text('CDD1044')),
              DataCell(Text('Anti-social behaviour')),
              DataCell(Text('12/04/2022')),
              DataCell(Container(
                  width: 73,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                    color: Color(0xff14B8A6),
                  ),
                  child: Center(child: Text('SOLVED')))),
            ]),
          ],
        ),
      ]),
    );
  }
}
