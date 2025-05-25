import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets214_Spacer.dart';

class FlutterSpacerFlutterAllWidgets extends StatefulWidget {
  const FlutterSpacerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSpacerFlutterAllWidgets> createState() =>
      _FlutterSpacerFlutterAllWidgetsState();
}

class _FlutterSpacerFlutterAllWidgetsState
    extends State<FlutterSpacerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 214,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Spacer Widget'),
          const H3('Click to View Live'),
          const Live(page: SpacerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SpacerWidget extends StatefulWidget {
   const SpacerWidget({super.key});
 
   @override
   State<SpacerWidget> createState() => _SpacerWidgetState();
 }
 
 class _SpacerWidgetState extends State<SpacerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Spacer Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Container(
             color: Colors.orangeAccent,
             height: 100,
           ),
           const Spacer(
             flex: 1,
           ),
           Container(
             color: Colors.orangeAccent,
             height: 100,
           ),
           const Spacer(
             flex: 2,
           ),
           Container(
             color: Colors.orangeAccent,
             height: 100,
           ),
         ],
       ),
     );
   }
 }

''';
