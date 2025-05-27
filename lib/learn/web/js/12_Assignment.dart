import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Assignment extends StatefulWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Assignment Opertor'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Sno'),
                ),
                DataColumn(
                  label: ThText('Operator'),
                ),
                DataColumn(
                  label: ThText('Usage'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('1. '),
                    ),
                    DataCell(
                      TrText('='),
                    ),
                    DataCell(
                      TrText('Assigns a value'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('2. '),
                    ),
                    DataCell(
                      TrText('+='),
                    ),
                    DataCell(
                      TrText('Adds a value to a variable.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('3. '),
                    ),
                    DataCell(
                      TrText('-='),
                    ),
                    DataCell(
                      TrText('Subtracts a value to a variable.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('4. '),
                    ),
                    DataCell(
                      TrText('*='),
                    ),
                    DataCell(
                      TrText('Multiplies a variable.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('5. '),
                    ),
                    DataCell(
                      TrText('/='),
                    ),
                    DataCell(
                      TrText('Divides a variable.'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('6. '),
                    ),
                    DataCell(
                      TrText('%='),
                    ),
                    DataCell(
                      TrText('Assigns a remainder to a variable.'),
                    )
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let a = 10;

//a=a+5; //+=
a += 5; //15
a -= 5; //10
a *= 5; //50
a /= 5; //50
a %= 5; //0
console.log(a);

''';
