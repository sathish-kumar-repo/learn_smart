import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets207_VerticalDivider.dart';

class FlutterVerticalDividerFlutterAllWidgets extends StatefulWidget {
  const FlutterVerticalDividerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterVerticalDividerFlutterAllWidgets> createState() =>
      _FlutterVerticalDividerFlutterAllWidgetsState();
}

class _FlutterVerticalDividerFlutterAllWidgetsState
    extends State<FlutterVerticalDividerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 207,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('VerticalDivider Widget'),
          const H3('Click to View Live'),
          const Live(page: VerticalDividerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class VerticalDividerWidget extends StatefulWidget {
   const VerticalDividerWidget({super.key});
 
   @override
   State<VerticalDividerWidget> createState() => _VerticalDividerWidgetState();
 }
 
 class _VerticalDividerWidgetState extends State<VerticalDividerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("VerticalDivider Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(50),
         child: Row(
           children: [
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.orangeAccent,
                 ),
               ),
             ),
             const VerticalDivider(
               width: 50,
               thickness: 1,
               indent: 40,
               endIndent: 100,
               color: Colors.grey,
             ),
             Expanded(
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.orangeAccent,
                 ),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
