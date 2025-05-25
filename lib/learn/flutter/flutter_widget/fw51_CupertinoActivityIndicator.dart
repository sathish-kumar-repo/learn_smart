import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets51_CupertinoActivityIndicator.dart';

class FlutterCupertinoActivityIndicatorFlutterAllWidgets
    extends StatefulWidget {
  const FlutterCupertinoActivityIndicatorFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoActivityIndicatorFlutterAllWidgets> createState() =>
      _FlutterCupertinoActivityIndicatorFlutterAllWidgetsState();
}

class _FlutterCupertinoActivityIndicatorFlutterAllWidgetsState
    extends State<FlutterCupertinoActivityIndicatorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 51,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoActivityIndicator Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoActivityIndicatorWidget()),
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
 
 class CupertinoActivityIndicatorWidget extends StatefulWidget {
   const CupertinoActivityIndicatorWidget({super.key});
 
   @override
   State<CupertinoActivityIndicatorWidget> createState() =>
       _CupertinoActivityIndicatorWidgetState();
 }
 
 class _CupertinoActivityIndicatorWidgetState
     extends State<CupertinoActivityIndicatorWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoActivityIndicator Widget"),
         centerTitle: true,
       ),
       body: const CupertinoPageScaffold(
         child: Center(
           child: CupertinoActivityIndicator(
             radius: 50,
             color: Colors.pinkAccent,
             // animating: false,
           ),
         ),
       ),
     );
   }
 }

''';
