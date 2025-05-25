import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets102_FloatingActionButton.dart';

class FlutterFloatingActionButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterFloatingActionButtonFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterFloatingActionButtonFlutterAllWidgets> createState() =>
      _FlutterFloatingActionButtonFlutterAllWidgetsState();
}

class _FlutterFloatingActionButtonFlutterAllWidgetsState
    extends State<FlutterFloatingActionButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 102,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FloatingActionButton Widget'),
          const H3('Click to View Live'),
          const Live(page: FloatingActionButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FloatingActionButtonWidget extends StatefulWidget {
   const FloatingActionButtonWidget({super.key});
 
   @override
   State<FloatingActionButtonWidget> createState() =>
       _FloatingActionButtonWidgetState();
 }
 
 class _FloatingActionButtonWidgetState
     extends State<FloatingActionButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FloatingActionButton Widget"),
         centerTitle: true,
       ),
       //body:
 
       floatingActionButtonLocation:
           FloatingActionButtonLocation.centerDocked, // many position
       floatingActionButton: FloatingActionButton(
         onPressed: () {},
         backgroundColor: Colors.purpleAccent,
         child: const Icon(Icons.add),
       ),
     );
   }
 }

''';
