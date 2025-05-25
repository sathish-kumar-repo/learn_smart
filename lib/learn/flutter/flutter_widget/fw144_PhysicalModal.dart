import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets144_PhysicalModal.dart';

class FlutterPhysicalModalFlutterAllWidgets extends StatefulWidget {
  const FlutterPhysicalModalFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPhysicalModalFlutterAllWidgets> createState() =>
      _FlutterPhysicalModalFlutterAllWidgetsState();
}

class _FlutterPhysicalModalFlutterAllWidgetsState
    extends State<FlutterPhysicalModalFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 144,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PhysicalModal Widget'),
          const H3('Click to View Live'),
          const Live(page: PhysicalModalWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PhysicalModalWidget extends StatefulWidget {
   const PhysicalModalWidget({super.key});
 
   @override
   State<PhysicalModalWidget> createState() => _PhysicalModalWidgetState();
 }
 
 class _PhysicalModalWidgetState extends State<PhysicalModalWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PhysicalModal Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: PhysicalModel(
           elevation: 20.0,
           shadowColor: Colors.redAccent,
           color: Colors.orangeAccent,
           shape: BoxShape.circle,
           child: SizedBox(
             width: 200,
             height: 200,
             child: Center(
               child: Icon(
                 Icons.flutter_dash,
                 size: 100,
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
