import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassOperators extends StatefulWidget {
  const SassOperators({Key? key}) : super(key: key);

  @override
  State<SassOperators> createState() => _SassOperatorsState();
}

class _SassOperatorsState extends State<SassOperators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Operators'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const Link('https://sass-lang.com/documentation/operators/'),
          Note(note),
        ],
      ),
    );
  }
}

var note = '''
Sass has a pretty standard order of operations, from tightest to loosest:

1. The unary operators not, +, -, and /.
2. The *, /, and % operators.
3. The + and - operators.
4. The >, >=, < and <= operators.
5. The == and != operators.
6. The and operator.
7. The or operator.
8. The = operator, when it’s available.
''';
var code1 = '''
// Equality
@debug 1px == 1px; // true
@debug 1px != 1em; // true
@debug 1 != 1px; // true
@debug 96px == 1in; // true

@debug "Helvetica" == Helvetica; // true
@debug "Helvetica" != "Arial"; // true

@debug hsl(34, 35%, 92.1%) == #f2ece4; // true
@debug rgba(179, 115, 153, 0.5) != rgba(179, 115, 153, 0.8); // true

@debug (5px 7px 10px) == (5px 7px 10px); // true
@debug (5px 7px 10px) != (10px 14px 20px); // true
@debug (5px 7px 10px) != (5px, 7px, 10px); // true
@debug (5px 7px 10px) != [5px 7px 10px]; // true

\$theme: (
  "venus": #998099,
  "nebula": #d2e1dd,
);
@debug \$theme == ("venus": #998099, "nebula": #d2e1dd); // true
@debug \$theme != ("venus": #998099, "iron": #dadbdf); // true

@debug true == true; // true
@debug true != false; // true
@debug null != false; // true

@debug get-function("rgba") == get-function("rgba"); // true
@debug get-function("rgba") != get-function("hsla"); // true

// Relational
@debug 100 > 50; // true
@debug 10px < 17px; // true
@debug 96px >= 1in; // true
@debug 1000ms <= 1s; // true

@debug 100 > 50px; // true
@debug 10px < 17; // true

@debug 100px > 10s;
//     ^^^^^^^^^^^
// Error: Incompatible units px and s.

// Numeric
@debug 10s + 15s; // 25s
@debug 1in - 10px; // 0.8958333333in
@debug 5px * 3px; // 15px*px
@debug 1in % 9px; // 0.0625in

@debug 100px + 50; // 150px
@debug 4s * 10; // 40s

@debug 100px + 10s;
//     ^^^^^^^^^^^
// Error: Incompatible units px and s.

// String 
@debug "Helvetica" + " Neue"; // "Helvetica Neue"
@debug sans- + serif; // sans-serif
@debug sans - serif; // sans-serif

@debug "Elapsed time: " + 10s; // "Elapsed time: 10s";
@debug true + " is a boolean value"; // "true is a boolean value";

@debug / 15px; // /15px
@debug - moz; // -moz

// Boolean
@debug not true; // false
@debug not false; // true

@debug true and true; // true
@debug true and false; // false

@debug true or false; // true

// Order of Operations
@debug 1 + 2 * 3 == 1 + (2 * 3); // true
@debug true or false and false == true or (false and false); // true
''';
