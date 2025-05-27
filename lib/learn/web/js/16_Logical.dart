import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Logical extends StatefulWidget {
  const Logical({Key? key}) : super(key: key);

  @override
  State<Logical> createState() => _LogicalState();
}

class _LogicalState extends State<Logical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Logical Opertor'),
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
                      TrText('&&'),
                    ),
                    DataCell(
                      TrText('and'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('2. '),
                    ),
                    DataCell(
                      TrText('||'),
                    ),
                    DataCell(
                      TrText('or'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('3. '),
                    ),
                    DataCell(
                      TrText('!'),
                    ),
                    DataCell(
                      TrText('not'),
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
//Logical Operators in JavaScript
/*
&&  logical and
||  logical or
!     logical not
*/
//35-100

let mark = 45;

console.log(mark >= 35 && mark <= 100);

let a = 5;
//2,5
console.log(a == 2 || a == 5);

a = false;
console.log(!a);

''';
