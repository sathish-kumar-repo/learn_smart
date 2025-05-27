import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Type_Conversion extends StatefulWidget {
  const Type_Conversion({Key? key}) : super(key: key);

  @override
  State<Type_Conversion> createState() => _Type_ConversionState();
}

class _Type_ConversionState extends State<Type_Conversion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Type Conversion'),
          const P(
              'In JavaScript, type conversion is the process of changing the data type of a variable or a value. This can be done using various built-in functions and methods. '),
          const H2('Few Examples of Type Conversion'),
          const Li('Strings to Numbers'),
          const Li('Numbers to Strings'),
          const Li('Dates to Numbers'),
          const Li('Numbers to Dates'),
          const Li('Boolean to Numbers'),
          const Li('Numbers to Boolean'),
          const H3('Type conversion Methods'),
          const Li('String(value) : Converts the given value to a string.'),
          const Li('Number(value) : Converts the given value to a number'),
          const Li('Boolean(value) : Converts the given value to a boolean.'),
          const Li('parseInt(value) : Converts the given value to an integer.'),
          const Li(
              'parseFloat(value) : Converts the given value to a floating-point number.'),
          const Note(
              'JavaScript also has some unary operators that perform type conversion'),
          const Li('+value : Converts the given value to a number.'),
          const Li('-value : Converts the given value to a number.'),
          const Li('!value : Converts the given value to a boolean.'),
          const P(
              'It is also possible to convert a value to a different type using the valueOf() and toString() methods.'),
          const P(
              'JavaScript also has some automatic type coercion which happens when different types are being used together in an operation. For instance, if a string is added to a number, JavaScript will convert the string to a number before performing the addition.'),
          const P(
              'It\'s important to keep in mind that type conversion can lead to unexpected results if not handled properly.'),
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
25 number
25 string
25.5 number
25.5 string
true boolean
true string
2023-08-20T13:27:07.783Z object
Sun Aug 20 2023 18:57:07 GMT+0530 (India Standard Time) string
[ 1, 2, 3, 4, 5 ] object
1,2,3,4,5 string
25 number
25 string
1234 string
1234 number
true boolean
1 number
[ 1, 2, 3, 4, 5 ] object
NaN number
Sathish Kumar string
NaN number
35 string
35 number
35.55 string
35 number
35.55 string
35.55 number
''';
var code1 = '''
//Type Conversion

let a;
// Number to String
a = 25;
console.log(a, typeof a);
a = String(25);
console.log(a, typeof a);

// Number to String
a = 25.5;
console.log(a, typeof a);
a = String(25.5);
console.log(a, typeof a);

// Boolean to String
a = true;
console.log(a, typeof a);
a = String(true);
console.log(a, typeof a);

// Date to String
a = new Date();
console.log(a, typeof a);
a = String(a);
console.log(a, typeof a);

// Array to String
a = [1, 2, 3, 4, 5];
console.log(a, typeof a);
a = String(a);
console.log(a, typeof a);

// Also using toString()
a = 25;
console.log(a, typeof a);
a = a.toString();
console.log(a, typeof a);


// String to number
a = "1234";
console.log(a, typeof a);
a = Number(a);
console.log(a, typeof a);

// Boolean to String
a = true;
console.log(a, typeof a);
a = Number(a);
console.log(a, typeof a);

// Array to Number
a = [1, 2, 3, 4, 5];
console.log(a, typeof a);
a = Number(a);
console.log(a, typeof a);

// String to Number
a = "Sathish Kumar";
console.log(a, typeof a);
a = Number(a);
console.log(a, typeof a);

// String to int
a = "35";
console.log(a, typeof a);
a = parseInt(a);
console.log(a, typeof a);

// String to int
a = "35.55";
console.log(a, typeof a);
a = parseInt(a);
console.log(a, typeof a);

// String to float
a = "35.55";
console.log(a, typeof a);
a = parseFloat(a);
console.log(a, typeof a);
''';
