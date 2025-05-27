import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartConditionalExpression extends StatefulWidget {
  const DartConditionalExpression({Key? key}) : super(key: key);

  @override
  State<DartConditionalExpression> createState() =>
      _DartConditionalExpressionState();
}

class _DartConditionalExpressionState extends State<DartConditionalExpression> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Conditional Expression'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
void main() {
  // Conditional Expressions

  // 1.   condition ? exp1 : exp2
  // If condition is true, evaluates expr1 (and returns its value);
  // otherwise, evaluates and returns the value of expr2.

  int a = 2;
  int b = 3;

  int smallNumber = a < b ? a : b;
  print("\$smallNumber is smaller");

  // 2.   exp1 ?? exp2
  // If expr1 is non-null, returns its value; otherwise, evaluates and
  // returns the value of expr2.

  String? name = null;

  String nameToPrint = name ?? "Guest User";
  print(nameToPrint);
}
''';
