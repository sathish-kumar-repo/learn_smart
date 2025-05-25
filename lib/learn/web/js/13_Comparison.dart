import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Comparison extends StatefulWidget {
  const Comparison({Key? key}) : super(key: key);

  @override
  State<Comparison> createState() => _ComparisonState();
}

class _ComparisonState extends State<Comparison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Comparison Opertor'),
          const H3('Equality (==): '),
          const P(
              'This operator compares two values to see if they are equal.'),
          const H3('Inequality (!=):'),
          const P(
              'This operator compares two values to see if they are not equal.'),
          const H3('=== operator'),
          const P(
              'on the other hand, is a strict equality operator and does not perform type coercion. It will only return true if the values being compared have the same type and value.'),
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
                      TrText('=='),
                    ),
                    DataCell(
                      TrText('equal to'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('2. '),
                    ),
                    DataCell(
                      TrText('==='),
                    ),
                    DataCell(
                      TrText('equal value and equal type'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('3. '),
                    ),
                    DataCell(
                      TrText('!='),
                    ),
                    DataCell(
                      TrText('not equal'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('4. '),
                    ),
                    DataCell(
                      TrText('!=='),
                    ),
                    DataCell(
                      TrText('not equal value or not equal type'),
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
//Comparison Operators

let a = 10;
let b = "25";
console.log(a == b);
console.log(a === b);
console.log(a != b);
console.log(a !== b);
''';
