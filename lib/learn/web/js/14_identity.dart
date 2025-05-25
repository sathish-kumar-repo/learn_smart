import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class identity extends StatefulWidget {
  const identity({Key? key}) : super(key: key);

  @override
  State<identity> createState() => _identityState();
}

class _identityState extends State<identity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Strict Equality or identity opertor(===)'),
          const H3('See the table to understand'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('X'),
                ),
                DataColumn(
                  label: ThText('Y'),
                ),
                DataColumn(
                  label: ThText('=='),
                ),
                DataColumn(
                  label: ThText('==='),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Undefinded'),
                    ),
                    DataCell(
                      TrText('Undefinded'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Null'),
                    ),
                    DataCell(
                      TrText('Null'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('False'),
                    ),
                    DataCell(
                      TrText('False'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('\'sathish\''),
                    ),
                    DataCell(
                      TrText('\'sathish\''),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('+0'),
                    ),
                    DataCell(
                      TrText('-0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('+0'),
                    ),
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText(' 	-0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('True'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('FALSE'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('""'),
                    ),
                    DataCell(
                      TrText('FALSE'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('""'),
                    ),
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('\'0\''),
                    ),
                    DataCell(
                      TrText('0'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('\'15\''),
                    ),
                    DataCell(
                      TrText('15'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('new string("sathish")'),
                    ),
                    DataCell(
                      TrText('"sathish"'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('null'),
                    ),
                    DataCell(
                      TrText('undefined'),
                    ),
                    DataCell(
                      TrText('True'),
                    ),
                    DataCell(
                      TrText('False'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
