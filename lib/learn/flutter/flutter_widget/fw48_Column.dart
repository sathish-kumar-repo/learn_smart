import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets48_Column.dart';

class FlutterColumnFlutterAllWidgets extends StatefulWidget {
  const FlutterColumnFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterColumnFlutterAllWidgets> createState() =>
      _FlutterColumnFlutterAllWidgetsState();
}

class _FlutterColumnFlutterAllWidgetsState
    extends State<FlutterColumnFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 48,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Column Widget'),
          const H3('Click to View Live'),
          const Live(page: ColumnWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ColumnWidget extends StatefulWidget {
   const ColumnWidget({super.key});
 
   @override
   State<ColumnWidget> createState() => _ColumnWidgetState();
 }
 
 class _ColumnWidgetState extends State<ColumnWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Column Widget"),
         centerTitle: true,
       ),
       body: const Column(
         crossAxisAlignment: CrossAxisAlignment.end,
         mainAxisAlignment: MainAxisAlignment.end,
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
           Text('Row - 1'),
           Text('Row - 2'),
           Text('Row - 3'),
           Text('Row - 4'),
           Text('Row - 5'),
           Text('Row - 6'),
           Text('Learn Smart'),
         ],
       ),
     );
   }
 }

''';
