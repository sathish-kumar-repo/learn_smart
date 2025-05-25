import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets38_CircularProgressIndicator.dart';

class FlutterCircularProgressIndicatorFlutterAllWidgets extends StatefulWidget {
  const FlutterCircularProgressIndicatorFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCircularProgressIndicatorFlutterAllWidgets> createState() =>
      _FlutterCircularProgressIndicatorFlutterAllWidgetsState();
}

class _FlutterCircularProgressIndicatorFlutterAllWidgetsState
    extends State<FlutterCircularProgressIndicatorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 38,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CircularProgressIndicator Widget'),
          const H3('Click to View Live'),
          const Live(page: CircularProgressIndicatorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CircularProgressIndicatorWidget extends StatefulWidget {
   const CircularProgressIndicatorWidget({super.key});
 
   @override
   State<CircularProgressIndicatorWidget> createState() =>
       _CircularProgressIndicatorWidgetState();
 }
 
 class _CircularProgressIndicatorWidgetState
     extends State<CircularProgressIndicatorWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CircularProgressIndicator Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: CircularProgressIndicator(
           backgroundColor: Colors.grey,
           color: Colors.pinkAccent,
           // value: .50,
           strokeWidth: 4,
         ),
       ),
     );
   }
 }

''';
