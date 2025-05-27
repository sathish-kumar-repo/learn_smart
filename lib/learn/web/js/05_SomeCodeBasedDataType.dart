import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class DataTypeIntro extends StatefulWidget {
  const DataTypeIntro({Key? key}) : super(key: key);

  @override
  State<DataTypeIntro> createState() => _DataTypeIntroState();
}

class _DataTypeIntroState extends State<DataTypeIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Data Types'),
          const P('It is Dynamic Programming Language'),
          const P(
              'Primitive data types: These are the basic data types that include numbers, strings, booleans, and special values like null and undefined.'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Data Type'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('String'),
                    ),
                    DataCell(
                      TrText(
                          'A string is a collection of alphanumeric characters.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Number'),
                    ),
                    DataCell(
                      TrText(
                          'Numbers are for numbers. We can\'t put a letter on here.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Boolean'),
                    ),
                    DataCell(
                      TrText('Booleans have two values. True and false'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Null and Undefined'),
                    ),
                    DataCell(
                      TrText(
                          'null and undefined stand for empty. That means they have no value assigned to them.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Symbols'),
                    ),
                    DataCell(
                      TrText(
                          'An array is a type of object used for storing multiple values in single variable.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Object Literals'),
                    ),
                    DataCell(
                      TrText(
                          'It is a comma-separated list of name-value pairs wrapped in curly braces.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Date'),
                    ),
                    DataCell(
                      TrText(
                          'JavaScript does not have a date data type. However, you can use the Date object and its methods to work with dates and times in your applications. '),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('content'),
                    ),
                    DataCell(
                      TrText('content'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
number
string
boolean
object
undefined
Symbol()
Symbol()
false
symbol
object
object
2023-08-26T05:03:48.048Z
object
''';
var code1 = '''
// Data Types in JavaScript
/*
JS Dynamic Programming
 
Primitive

String
Number   eg:  1.25,25
Boolean  eg:  True,False
Null
Undefinded 
Symbols  E6
 

Reference

Array
Object Literals
Date
*/

// Primitive

var a = 25.5;
console.log(typeof a);

var fname = "Sathish Kumar";
console.log(typeof fname);

var isMarried = true;
console.log(typeof isMarried);

var phone = null; // it show output is object
console.log(typeof phone);

let b;
console.log(typeof b); // undefined type

//ES6 2015
//  this is unique value that is identity
const s1 = Symbol(); //dlkfngsgs6565df6
console.log(s1);

const s2 = Symbol(); //fdfgdfg4345345
console.log(s2);

console.log(s1 == s2); // False
console.log(typeof s1);

//  Refernces type
var courses = ["C", "C++", "Java"]; // object type
console.log(typeof courses);

var student = {
  name: "Joes",
  age: 22,
};
console.log(typeof student);

var d = new Date();
console.log(d);
console.log(typeof d);
''';
