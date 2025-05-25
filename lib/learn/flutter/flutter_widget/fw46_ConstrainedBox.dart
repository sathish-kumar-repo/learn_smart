import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets46_ConstrainedBox.dart';

class FlutterConstrainedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterConstrainedBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterConstrainedBoxFlutterAllWidgets> createState() =>
      _FlutterConstrainedBoxFlutterAllWidgetsState();
}

class _FlutterConstrainedBoxFlutterAllWidgetsState
    extends State<FlutterConstrainedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 46,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ConstrainedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: ConstrainedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ConstrainedBoxWidget extends StatefulWidget {
   const ConstrainedBoxWidget({super.key});
 
   @override
   State<ConstrainedBoxWidget> createState() => _ConstrainedBoxWidgetState();
 }
 
 class _ConstrainedBoxWidgetState extends State<ConstrainedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ConstrainedBox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ConstrainedBox(
           constraints: const BoxConstraints(
             maxWidth: 900,
             maxHeight: 350,
           ),
           child: Container(
             color: Colors.pinkAccent,
             width: double.infinity,
           ),
         ),
       ),
     );
   }
 }

''';
