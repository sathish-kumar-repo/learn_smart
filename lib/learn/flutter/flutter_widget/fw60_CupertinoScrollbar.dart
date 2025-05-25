import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets60_CupertinoScrollbar.dart';

class FlutterCupertinoScrollbarFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoScrollbarFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoScrollbarFlutterAllWidgets> createState() =>
      _FlutterCupertinoScrollbarFlutterAllWidgetsState();
}

class _FlutterCupertinoScrollbarFlutterAllWidgetsState
    extends State<FlutterCupertinoScrollbarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 60,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoScrollbar Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoScrollbarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 
 class CupertinoScrollbarWidget extends StatefulWidget {
   const CupertinoScrollbarWidget({super.key});
 
   @override
   State<CupertinoScrollbarWidget> createState() =>
       _CupertinoScrollbarWidgetState();
 }
 
 class _CupertinoScrollbarWidgetState extends State<CupertinoScrollbarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoScrollbar Widget"),
         centerTitle: true,
       ),
       body: CupertinoScrollbar(
         thickness: 6.0,
         thicknessWhileDragging: 10.0,
         radius: const Radius.circular(34.0),
         radiusWhileDragging: Radius.zero,
         // thumbVisibility: true,
         child: ListView.builder(
           itemCount: 50,
           itemBuilder: (BuildContext context, int index) {
             return Center(
               child: Text(
                 '\$index',
                 style: const TextStyle(fontSize: 30),
               ),
             );
           },
         ),
       ),
     );
   }
 }

''';
