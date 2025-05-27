import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Relational extends StatefulWidget {
  const Relational({Key? key}) : super(key: key);

  @override
  State<Relational> createState() => _RelationalState();
}

class _RelationalState extends State<Relational> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Relational Operator'),
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
                      TrText('>'),
                    ),
                    DataCell(
                      TrText('greater than'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('2. '),
                    ),
                    DataCell(
                      TrText('<'),
                    ),
                    DataCell(
                      TrText('less than'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('3. '),
                    ),
                    DataCell(
                      TrText('>='),
                    ),
                    DataCell(
                      TrText('greater than or equal to'),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('4. '),
                    ),
                    DataCell(
                      TrText('<='),
                    ),
                    DataCell(
                      TrText('less than or equal to'),
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
//Relational Operators in JavaScript

/*
>   greater than
<   less than
>=  greater than or equal to
<=  less than or equal to
*/

let a = 10;
let b = 20;

console.log("Greater : ", a > b);
console.log("Lesser  : ", a < b);
console.log("Greater Than Equal  : ", a >= b);
console.log("Greater Than Equal  : ", a <= b);

''';
