import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class D_and_B extends StatefulWidget {
  const D_and_B({Key? key}) : super(key: key);

  @override
  State<D_and_B> createState() => _D_and_BState();
}

class _D_and_BState extends State<D_and_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 57,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Differences between Dot Notation and Bracket Notation'),
          const H2('Consider This Example'),
          Code(title: 'script.js', code: eg, type: 'javascript'),
          TableResponsive(
            table: CTable(
              col: const [
                DataColumn(
                  label: ThText('Dot Notation'),
                ),
                DataColumn(
                  label: ThText('Bracket Notation'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        children: [
                          const H3('Get Output'),
                          Code(
                            title: 'script.js',
                            code: code1,
                            type: 'javascript',
                          ),
                          const P('its Work'),
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const H3('Get Output'),
                          Code(
                            title: 'script.js',
                            code: code2,
                            type: 'javascript',
                          ),
                          const P('its Work'),
                        ],
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        children: [
                          const H3('Space is not allowed while get value'),
                          Code(
                              title: 'script.js',
                              code: code3,
                              type: 'javascript'),
                          const P('This will throw a SyntaxError'),
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const H3('Space is allowed while get value'),
                          Code(
                            title: 'script.js',
                            code: code4,
                            type: 'javascript',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        children: [
                          const H3('stored value in variable is not possible'),
                          Code(
                            title: 'script.js',
                            code: code5,
                            type: 'javascript',
                          ),
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const H3('stored value in variable is possible'),
                          Code(
                              title: 'script.js',
                              code: code6,
                              type: 'javascript'),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

var eg = '''
const user = {
    name: "Tutor Joes",
    age: 30,
    job: "Developer"
};
''';
var code6 = '''
const prop = "name";
console.log(user[prop]); // Output: "Joes"
''';
var code5 = '''
console.log(user.prop); // Output: undefined
''';
var code4 = '''
let user = {
    "first name": "Tutor",
    "last name": "Joes"
};

console.log(user["first name"]); // "Tutor"
console.log(user["last name"]); // "Joes"
''';
var code3 = '''
// console.log(user.first name);
''';
var code2 = '''
console.log(user["age"]); // Output: 30
user["age"] = 25;
console.log(user["age"]); // Output: 25
''';
var code1 = '''
console.log(user.name); // Output: "Tutor Joes"
user.name = "Joes";
console.log(user.name); // Output: "Joes"
''';
/**
  tableResponsive(
            table: CTable(
              col: const [
                DataColumn(
                  label: thText(  'Difference'),
                ),
                DataColumn(
                  label: thText(  'var'),
                ),
                DataColumn(
                  label: thText(  'let'),
                ),
                DataColumn(
                  label: thText(  'Const'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    const DataCell(
                      trText(  'Scope'),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const li(  'Var acts as global scope'),
                          const li(  'Also access outside the block'),
                          Code(
                            title: 'script.js',
                            code: code2,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const li(  'Let act as local scope'),
                          const li(  'Only access in local scope'),
                          Code(
                            title: 'script.js',
                            code: code3,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const li(  'Const also acts as local scope'),
                          const li(  'Only access in local scope'),
                          Code(
                            title: 'script.js',
                            code: code4,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
 */
