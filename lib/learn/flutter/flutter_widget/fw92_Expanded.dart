import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets92_Expanded.dart';

class FlutterExpandedFlutterAllWidgets extends StatefulWidget {
  const FlutterExpandedFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterExpandedFlutterAllWidgets> createState() =>
      _FlutterExpandedFlutterAllWidgetsState();
}

class _FlutterExpandedFlutterAllWidgetsState
    extends State<FlutterExpandedFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 92,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Expanded Widget'),
          const H3('Click to View Live'),
          const Live(page: ExpandedWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ExpandedWidget extends StatefulWidget {
   const ExpandedWidget({super.key});
 
   @override
   State<ExpandedWidget> createState() => _ExpandedWidgetState();
 }
 
 class _ExpandedWidgetState extends State<ExpandedWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Expanded Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Expanded(
             flex: 2,
             child: Container(
               color: Colors.blue,
               height: 200,
             ),
           ),
           Expanded(
             flex: 1,
             child: Container(
               color: Colors.orange,
               height: 200,
             ),
           ),
           Expanded(
             flex: 3,
             child: Container(
               color: Colors.red,
               height: 200,
             ),
           ),
         ],
       ),
     );
   }
 }

''';
