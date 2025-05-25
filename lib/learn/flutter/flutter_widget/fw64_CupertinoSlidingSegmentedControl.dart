import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets64_CupertinoSlidingSegmentedControl.dart';

class FlutterCupertinoSlidingSegmentedControlFlutterAllWidgets
    extends StatefulWidget {
  const FlutterCupertinoSlidingSegmentedControlFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoSlidingSegmentedControlFlutterAllWidgets>
      createState() =>
          _FlutterCupertinoSlidingSegmentedControlFlutterAllWidgetsState();
}

class _FlutterCupertinoSlidingSegmentedControlFlutterAllWidgetsState
    extends State<FlutterCupertinoSlidingSegmentedControlFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 64,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoSlidingSegmentedControl Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoSlidingSegmentedControlWidget()),
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
 
 class CupertinoSlidingSegmentedControlWidget extends StatefulWidget {
   const CupertinoSlidingSegmentedControlWidget({super.key});
 
   @override
   State<CupertinoSlidingSegmentedControlWidget> createState() =>
       _CupertinoSlidingSegmentedControlWidgetState();
 }
 
 class _CupertinoSlidingSegmentedControlWidgetState
     extends State<CupertinoSlidingSegmentedControlWidget> {
   int? _sliding = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoSlidingSegmentedControl Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: CupertinoSlidingSegmentedControl(
           children: const {
             0: Text('Text 0'),
             1: Text('Text 1'),
             2: Text('Text 2'),
           },
           groupValue: _sliding,
           onValueChanged: (int? newValue) {
             setState(() {
               _sliding = newValue;
             });
           },
         ),
       ),
     );
   }
 }

''';
