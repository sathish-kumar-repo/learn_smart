import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class varLetConst extends StatefulWidget {
  const varLetConst({Key? key}) : super(key: key);

  @override
  State<varLetConst> createState() => _varLetConstState();
}

class _varLetConstState extends State<varLetConst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Difference between var, let and const'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          TableResponsive(
            table: CTable(
              col: const [
                DataColumn(
                  label: ThText('Difference'),
                ),
                DataColumn(
                  label: ThText('var'),
                ),
                DataColumn(
                  label: ThText('let'),
                ),
                DataColumn(
                  label: ThText('Const'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    const DataCell(
                      TrText('Scope'),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('Var acts as global scope'),
                          const Li('Also access outside the block'),
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
                          const Li('Let act as local scope'),
                          const Li('Only access in local scope'),
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
                          const Li('Const also acts as local scope'),
                          const Li('Only access in local scope'),
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
                DataRow(
                  cells: [
                    const DataCell(
                      TrText('Variable redeclaration'),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('Variable redeclaration'),
                          const Li('Var allow variable redeclaration'),
                          const Li('That is 25 change to 45'),
                          Code(
                            title: 'script.js',
                            code: code8,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('Let does not allow variable redeclaration'),
                          const Li('Show error'),
                          Code(
                            title: 'script.js',
                            code: code9,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li(
                              'const does not allow variable redeclaration'),
                          const Li('Show error'),
                          Code(
                            title: 'script.js',
                            code: code10,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    const DataCell(
                      TrText(
                        'Value assignment',
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('it allows'),
                          Code(
                            title: 'script.js',
                            code: code5,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('It allows'),
                          Code(
                            title: 'script.js',
                            code: code6,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const Li('It does not allow'),
                          const Li('Show error '),
                          Code(
                            title: 'script.js',
                            code: code7,
                            type: 'javascript',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Note(
              'Normal variable declare in const, it does not change but only change in object'),
          Code(title: 'script.js', code: code11, type: 'javascript')
        ],
      ),
    );
  }
}

var code11 = '''
const student={'name':"ram","age":12};
console.table(student);
console.log(student.name);
student.name="Joes";
console.table(student);
''';
var code10 = '''
const a=25;
console.log(a)

const a=45;   //error
''';
var code9 = '''
let a=25;
console.log(a)

let a=45;   //error
''';
var code8 = '''
var a=25;
console.log(a)

var a=45;
console.log(a)
''';
var code7 = '''
const a=25;
console.log(a);
a=45;  //Constant Error
console.log(a);
''';
var code6 = '''
let a=25
console.log(a);
a=45;
console.log(a);
''';
var code5 = '''
var a=25;
console.log(a);
a=45;
console.log(a);
''';
var code4 = '''
if(true)
{
    const msg="Welcome to Tutor Joes";
}
console.log(msg);  //error
''';
var code3 = '''
if(true)
{
    let msg="Welcome to Tutor Joes";
    console.log(msg);  Work
}
console.log(msg); // Error
''';
var code2 = '''
if(true)
{
    var msg="Welcome to Tutor Joes";
}
console.log(msg);
''';
var code1 = '''
/*
  1997
  var
    2015 E6
  let
  const
*/

/*
var a=25;
var b=35;
console.log(a+b);
*/
//-----------------------------------
//1.Scope
/*
if(true)
{
  //var msg="Welcome to Sathish Kumar";
  //let msg="Welcome to Sathish Kumar";
  const msg="Welcome to Sathish Kumar";
  //console.log(msg);
}
console.log(msg);
*/
//-----------------------------------
//2.Variable Redeclaration
/*
var a=25;
console.log(a)
 
var a=45;
console.log(a)
 
 
let a=25;
console.log(a)
 
let a=45;
 
 
const a=25;
console.log(a)
 
const a=45;
 
*/
//-----------------------------------
//3.Value assignment
/*
var a=25;
console.log(a);
a=45;
console.log(a);
*/
/*
let a=25
console.log(a);
a=45;
console.log(a);
 
const a=25;
console.log(a);
a=45;  //Constant Error
console.log(a);
*/

const student = { name: "ram", age: 12 };
console.table(student);
console.log(student.name);
student.name = "Joes";
console.table(student);
''';
