import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets119_InkWell.dart';

class FlutterInkWellFlutterAllWidgets extends StatefulWidget {
  const FlutterInkWellFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterInkWellFlutterAllWidgets> createState() =>
      _FlutterInkWellFlutterAllWidgetsState();
}

class _FlutterInkWellFlutterAllWidgetsState
    extends State<FlutterInkWellFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 119,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('InkWell Widget'),
          const H3('Click to View Live'),
          const Live(page: InkWellWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class InkWellWidget extends StatefulWidget {
   const InkWellWidget({super.key});
 
   @override
   State<InkWellWidget> createState() => _InkWellWidgetState();
 }
 
 class _InkWellWidgetState extends State<InkWellWidget> {
   Color color = Colors.blue;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("InkWell Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: InkWell(
           onTap: () {
             setState(() {
               color = Colors.red;
             });
           },
           child: Ink(
             height: 300,
             width: 300,
             color: color,
             child: const Center(
               child: Text('Click'),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
