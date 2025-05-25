import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets137_OffStage.dart';

class FlutterOffStageFlutterAllWidgets extends StatefulWidget {
  const FlutterOffStageFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterOffStageFlutterAllWidgets> createState() =>
      _FlutterOffStageFlutterAllWidgetsState();
}

class _FlutterOffStageFlutterAllWidgetsState
    extends State<FlutterOffStageFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 137,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('OffStage Widget'),
          const H3('Click to View Live'),
          const Live(page: OffStageWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OffStageWidget extends StatefulWidget {
   const OffStageWidget({super.key});
 
   @override
   State<OffStageWidget> createState() => _OffStageWidgetState();
 }
 
 class _OffStageWidgetState extends State<OffStageWidget> {
   bool isHided = true;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("OffStage Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         width: double.infinity,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Offstage(
               offstage: isHided,
               child: const Icon(
                 Icons.flutter_dash,
                 size: 100,
               ),
             ),
             ElevatedButton(
               onPressed: () {
                 setState(() {
                   isHided = !isHided;
                 });
               },
               child: Text(
                 'isHided = \$isHided',
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
