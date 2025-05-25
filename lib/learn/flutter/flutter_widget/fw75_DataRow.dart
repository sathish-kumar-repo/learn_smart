import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets75_DataRow.dart';

class FlutterDataRowFlutterAllWidgets extends StatefulWidget {
  const FlutterDataRowFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDataRowFlutterAllWidgets> createState() =>
      _FlutterDataRowFlutterAllWidgetsState();
}

class _FlutterDataRowFlutterAllWidgetsState
    extends State<FlutterDataRowFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 75,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DataRow Widget'),
          const H3('Click to View Live'),
          const Live(page: DataRowWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DataRowWidget extends StatefulWidget {
   const DataRowWidget({super.key});
 
   @override
   State<DataRowWidget> createState() => _DataRowWidgetState();
 }
 
 class _DataRowWidgetState extends State<DataRowWidget> {
   TextStyle titles = const TextStyle(
     fontWeight: FontWeight.bold,
     fontStyle: FontStyle.italic,
   );
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DataRow Widget"),
         centerTitle: true,
       ),
       body: DataTable(
         columns: <DataColumn>[
           DataColumn(
             label: Text(
               'Name',
               style: titles,
             ),
           ),
           DataColumn(
             label: Text(
               'Age',
               style: titles,
             ),
           ),
           DataColumn(
             label: Text(
               'Color',
               style: titles,
             ),
           ),
         ],
         rows: const [
           DataRow(
             cells: [
               DataCell(Text('Sathish')),
               DataCell(Text('21')),
               DataCell(Text('Blue')),
             ],
           ),
           DataRow(
             cells: [
               DataCell(Text('Kumar')),
               DataCell(Text('21')),
               DataCell(Text('Red')),
             ],
           ),
           DataRow(
             cells: [
               DataCell(Text('Sam')),
               DataCell(Text('61')),
               DataCell(Text('Black')),
             ],
           )
         ],
       ),
     );
   }
 }

''';
