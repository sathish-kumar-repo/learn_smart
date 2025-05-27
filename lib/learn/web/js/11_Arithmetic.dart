import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({Key? key}) : super(key: key);

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Arithmetic opertor'),
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
                      TrText('+'),
                    ),
                    DataCell(
                      TrText(' 	Addition'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('2. '),
                    ),
                    DataCell(
                      TrText('-'),
                    ),
                    DataCell(
                      TrText('Subtraction'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('3. '),
                    ),
                    DataCell(
                      TrText('*'),
                    ),
                    DataCell(
                      TrText('Multiplication'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('4. '),
                    ),
                    DataCell(
                      TrText('**'),
                    ),
                    DataCell(
                      TrText('Exponentiation (2016)'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('5. '),
                    ),
                    DataCell(
                      TrText('/'),
                    ),
                    DataCell(
                      TrText('Division'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('6. '),
                    ),
                    DataCell(
                      TrText('%'),
                    ),
                    DataCell(
                      TrText('Modulus (Remainder)'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('7. '),
                    ),
                    DataCell(
                      TrText('++'),
                    ),
                    DataCell(
                      TrText('Increment '),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('8. '),
                    ),
                    DataCell(
                      TrText('--'),
                    ),
                    DataCell(
                      TrText('Decrement '),
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
let a = 100;
let b = 20;
let c;
c = a + b;
c = a - b;
c = a * b;
c = a / b;
c = a % b;
c = 2 ** 3; //2016
c = ++a;
c = --b;
console.log(c);
''';
