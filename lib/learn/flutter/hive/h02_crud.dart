import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCCodeCompile extends StatefulWidget {
  const FCCodeCompile({Key? key}) : super(key: key);

  @override
  State<FCCodeCompile> createState() => _FCCodeCompileState();
}

class _FCCodeCompileState extends State<FCCodeCompile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Hive CRUD'),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart')
        ],
      ),
    );
  }
}

var code = '''
Future<void> main() async {
  // widget binding are initialized properly
  WidgetsFlutterBinding.ensureInitialized();

  // -------------------------------------

  await Hive.initFlutter('hive_db'); // passing the sub directory

  await Hive.openBox('testBox');

  // -------------------------------------

  // Once the box is opened we need to get a reference of the box
  var b = Hive.box('testBox'); // Returns a previously opened box

  // -------------------------------------

  debugPrint(b.name); // box name
  debugPrint(b.path);
  debugPrint(b.isOpen.toString());
  debugPrint(b.values.toString());
  debugPrint(b.keys.toString());
  debugPrint(b.lazy.toString());

  // -------------------------------------
  // Write

  b.put('id', 1);
  b.put('name', 'Tom');
  b.put('language', ['C', 'C++', 'Java']);
  b.putAll({
    'dept': 'IT',
    'age': 18,
  });

  // Hive stores the key in Ascending order
  debugPrint(b.keys.toString());
  debugPrint(b.values.toString());
  debugPrint(b.length.toString());

  // -------------------------------------
  // Read
  debugPrint(b.get('name'));
  debugPrint(b.get('id').toString());
  debugPrint(b.get('language').toString());
  debugPrint(b.getAt(1).toString());

  debugPrint(b.get('x').toString());
  debugPrint(b.get('x', defaultValue: 'This is default value').toString());

  // -------------------------------------
  // Update
  b.put('name', 'Sathish');
  b.put('language', ['Dart', 'Flutter', 'Hive']);
  debugPrint(b.get('name'));
  debugPrint(b.get('language').toString());

  // -------------------------------------
  // Delete
  b.delete('name');
  debugPrint(b.get('name'));
  b.deleteAll(b.keys);
  debugPrint(b.keys.toString());

  b.deleteFromDisk();
  runApp(const MyApp());
}
''';
