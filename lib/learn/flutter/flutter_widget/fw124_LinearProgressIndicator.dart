import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets124_LinearProgressIndicator.dart';

class FlutterLinearProgressIndicatorFlutterAllWidgets extends StatefulWidget {
  const FlutterLinearProgressIndicatorFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterLinearProgressIndicatorFlutterAllWidgets> createState() =>
      _FlutterLinearProgressIndicatorFlutterAllWidgetsState();
}

class _FlutterLinearProgressIndicatorFlutterAllWidgetsState
    extends State<FlutterLinearProgressIndicatorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 124,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('LinearProgressIndicator Widget'),
          const H3('Click to View Live'),
          const Live(page: LinearProgressIndicatorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class LinearProgressIndicatorWidget extends StatefulWidget {
   const LinearProgressIndicatorWidget({super.key});
 
   @override
   State<LinearProgressIndicatorWidget> createState() =>
       _LinearProgressIndicatorWidgetState();
 }
 
 class _LinearProgressIndicatorWidgetState
     extends State<LinearProgressIndicatorWidget> with TickerProviderStateMixin {
   late AnimationController controller;
   @override
   void initState() {
     controller = AnimationController(
       vsync: this,
       duration: const Duration(
         seconds: 5,
       ),
     )..addListener(() {
         setState(() {});
       });
     controller.repeat(reverse: true);
     super.initState();
   }
 
   @override
   void dispose() {
     controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("LinearProgressIndicator Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(40.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             LinearProgressIndicator(
               value: controller.value,
             ),
             const LinearProgressIndicator()
           ],
         ),
       ),
     );
   }
 }

''';
