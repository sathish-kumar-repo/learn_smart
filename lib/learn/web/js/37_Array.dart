import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class array extends StatefulWidget {
  const array({Key? key}) : super(key: key);

  @override
  State<array> createState() => _arrayState();
}

class _arrayState extends State<array> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 37,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Array Intro'),
          const P(
              'An array is an object that can store multiple values at once.'),
          const P(
              'The Array in JavaScript is a global object which contains a list of items. It is similar to any variable, in that you can use it to hold any type of data.'),
          const P(
              'This is zero-based, which means that the index of the first element is 0. An element inside an array can be of any type, and different elements of the same array can be of different types : string, boolean, even objects or other arrays.'),
          const P(
              'JavaScript provides a number of built-in functions, or methods, that can be used to manipulate arrays. These functions are part of the Array.prototype object and can be used on any array object in JavaScript. Some of the most commonly used array functions in JavaScript include:'),
          TableResponsive(
            table: DataTable(
              columns: const [
                DataColumn(
                  label: ThText('Array Function'),
                ),
              ],
              rows: const [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('length()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('content'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('concat()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText(' 	join()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('constructor()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('every()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('forEach()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('map()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('includes()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('pop()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('push()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('reduce()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('shift()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('slice()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('splice()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('sort()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('indexOf()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('fill()'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('delete'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('push()'),
          const Li('adds one or more elements to the end of an array'),
          const H3('pop()'),
          const Li('removes the last element from an array'),
          const H3('shift()'),
          const Li('adds one or more elements to the beginning of an array'),
          const H3('unshift()'),
          const Li('adds one or more elements to the beginning of an array'),
          const H3('slice()'),
          const Li('returns a shallow copy of a portion of an array'),
          const H3('splice()'),
          const Li('adds and/or removes elements from an array'),
          const H3('sort()'),
          const Li('sorts the elements of an array in place'),
          const H3('reverse()'),
          const Li('reverses the order of the elements in an array'),
          const H3('concat()'),
          const Li(
              'returns a new array that is a concatenation of the original array and one or more additional arrays or values'),
          const H3('join()'),
          const Li(
              'creates and returns a new string by concatenating all of the elements in an array with a specified separator.'),
          const P(
              'These are just a few examples of the many array functions available in JavaScript, and there are many more to explore.'),
          const H4('Example'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let a = [10, 20, 30, 40];
console.log(a);
console.table(a);
console.log(a[1]);

// Also using array constructor
let b = new Array(10, 20, 30, 40);
console.table(b);

let c = new Array("Joes", 30, true, { m1: 100, m2: 75, m3: 65 });
console.table(c);

''';
