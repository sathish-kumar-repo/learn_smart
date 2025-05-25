import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Bitwise extends StatefulWidget {
  const Bitwise({Key? key}) : super(key: key);

  @override
  State<Bitwise> createState() => _BitwiseState();
}

class _BitwiseState extends State<Bitwise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: javaScriptTopics,
        img: 'js.png',
      ),
      body: MyPage(
        children: [
          const H1('Bitwise Operator'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Bitwise Operators'),
                ),
                DataColumn(
                  label: ThText(''),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Bitwise AND (&)'),
                    ),
                    DataCell(
                      TrText('Bitwise AND assignment (&=)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Bitwise OR (|)'),
                    ),
                    DataCell(
                      TrText('Bitwise OR assignment (|=)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Bitwise NOT (~) ~a=-a-1'),
                    ),
                    DataCell(
                      TrText(''),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Bitwise XOR (^)'),
                    ),
                    DataCell(
                      TrText('Bitwise XOR assignment (^=)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Left shift (<<)'),
                    ),
                    DataCell(
                      TrText('Left shift assignment (<<=)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Right shift (>>)'),
                    ),
                    DataCell(
                      TrText('Right shift assignment (>>=)'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Unsigned right shift (>>>)'),
                    ),
                    DataCell(
                      TrText('Unsigned right shift assignment (>>>=)'),
                    ),
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
// bitwise and

let a = 2;
let b = 3;
console.log(a & b);

// bitwise and assignment

a = 2;
b = 3;
a &= b;
console.log(a);

// bitwise or
a = 2;
b = 3;
console.log(a | b);

// bitwise or assignment
a = 2;
b = 3;
a |= b;
console.log(a);

// bitwise NOT
a = 2;
console.log(~a);

// bitwise xor
a = 2;
b = 3;
console.log(a ^ b);

// bitwise xor assignment
a = 2;
b = 3;
a ^= b;
console.log(a);

// left shift
a = 5;
console.log(a << 2);

// left shift assignment
a = 5;
b = 2;
a <<= b;
console.log(a);

// right shift
a = 5;
console.log(a >> 2);

// right shift assignment
a = 5;
b = 2;
a >>= b;
console.log(a);  
''';
