import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartVariablesAndDatatypes extends StatefulWidget {
  const DartVariablesAndDatatypes({Key? key}) : super(key: key);

  @override
  State<DartVariablesAndDatatypes> createState() =>
      _DartVariablesAndDatatypesState();
}

class _DartVariablesAndDatatypesState extends State<DartVariablesAndDatatypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Variables And Datatypes'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
void main(List<String> arguments) {
  // Numbers: int
  int score = 23;
  var count = 23; // It is inferred as integer automatically by compiler
  int hexValue = 0xEADEBAEE; // ARGB Value
  print(score);
  print(hexValue);
  print(count.runtimeType);
  print(hexValue.runtimeType);

  // Numbers: double
  double percentage = 93.4;
  var percent = 82.533;
  double exponents = 1.42e5;
  print(exponents);
  print(percentage.runtimeType);
  print(percent.runtimeType);

  // Strings
  String name = "Henry";
  var company = "Google";
  print(name.runtimeType);
  print(company.runtimeType);

  // Boolean
  bool isValid = true;
  var isAlive = false;
  print(isValid.runtimeType);
  print(isAlive.runtimeType);

  // Dyanmic
  dynamic z;
  z = 10;
  print('The Value of Z \${z} type : \${z.runtimeType}');
  z = 25.5;
  print('The Value of Z \${z} type : \${z.runtimeType}');

  // NOTE: All data types in Dart are Objects.
  // Therefore, their initial value is by default 'null'
  var isMarried;
  print(isMarried); // null
}
''';
