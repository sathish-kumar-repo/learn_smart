import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets191_SystemMouseCursors.dart';

class FlutterSystemMouseCursorsFlutterAllWidgets extends StatefulWidget {
  const FlutterSystemMouseCursorsFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterSystemMouseCursorsFlutterAllWidgets> createState() =>
      _FlutterSystemMouseCursorsFlutterAllWidgetsState();
}

class _FlutterSystemMouseCursorsFlutterAllWidgetsState
    extends State<FlutterSystemMouseCursorsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 191,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SystemMouseCursors Widget'),
          const H3('Click to View Live'),
          const Live(page: SystemMouseCursorsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SystemMouseCursorsWidget extends StatefulWidget {
   const SystemMouseCursorsWidget({super.key});
 
   @override
   State<SystemMouseCursorsWidget> createState() =>
       _SystemMouseCursorsWidgetState();
 }
 
 class _SystemMouseCursorsWidgetState extends State<SystemMouseCursorsWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SystemMouseCursors Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: MouseRegion(
           cursor: SystemMouseCursors.grab,
           child: Container(
             width: 200,
             height: 100,
             decoration: const BoxDecoration(
               shape: BoxShape.circle,
               color: Colors.orangeAccent,
             ),
           ),
         ),
       ),
     );
   }
 }

''';
