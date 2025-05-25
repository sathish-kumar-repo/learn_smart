import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets193_Table.dart';

class FlutterTableFlutterAllWidgets extends StatefulWidget {
  const FlutterTableFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTableFlutterAllWidgets> createState() =>
      _FlutterTableFlutterAllWidgetsState();
}

class _FlutterTableFlutterAllWidgetsState
    extends State<FlutterTableFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 193,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Table Widget'),
          const H3('Click to View Live'),
          const Live(page: TableWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TableWidget extends StatefulWidget {
   const TableWidget({super.key});
 
   @override
   State<TableWidget> createState() => _TableWidgetState();
 }
 
 class _TableWidgetState extends State<TableWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Table Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(15.0),
             child: Table(
               border: TableBorder.all(color: Colors.white30),
               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
               children: [
                 const TableRow(
                   decoration: BoxDecoration(
                     color: Colors.redAccent,
                   ),
                   children: [
                     TableCell(
                       verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Title - 1'),
                       ),
                     ),
                     TableCell(
                       verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Title - 2'),
                       ),
                     ),
                     TableCell(
                       verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text('Title - 3'),
                       ),
                     ),
                   ],
                 ),
                 ...List.generate(
                   50,
                   (index) => const TableRow(
                     children: [
                       TableCell(
                         verticalAlignment: TableCellVerticalAlignment.middle,
                         child: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text('Cell - 1'),
                         ),
                       ),
                       TableCell(
                         verticalAlignment: TableCellVerticalAlignment.middle,
                         child: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text('Cell - 2'),
                         ),
                       ),
                       TableCell(
                         verticalAlignment: TableCellVerticalAlignment.middle,
                         child: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Text('Cell - 3'),
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
         ),
       ),
     );
   }
 }

''';
