import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets101_Flexible.dart';

class FlutterFlexibleFlutterAllWidgets extends StatefulWidget {
  const FlutterFlexibleFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFlexibleFlutterAllWidgets> createState() =>
      _FlutterFlexibleFlutterAllWidgetsState();
}

class _FlutterFlexibleFlutterAllWidgetsState
    extends State<FlutterFlexibleFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 101,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flexible Widget'),
          const H3('Click to View Live'),
          const Live(page: FlexibleWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FlexibleWidget extends StatefulWidget {
   const FlexibleWidget({super.key});
 
   @override
   State<FlexibleWidget> createState() => _FlexibleWidgetState();
 }
 
 class _FlexibleWidgetState extends State<FlexibleWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Flexible Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           // Flexible(
           //   flex: 5,
           //   child: Container(
           //     // height: 50,
           //     color: Colors.blue,
           //   ),
           // ),
           // Flexible(
           //   flex: 4,
           //   child: Container(
           //     // height: 100,
           //     color: Colors.orange,
           //   ),
           // ),
           // Flexible(
           //   flex: 3,
           //   child: Container(
           //     // height: 200,
           //     color: Colors.red,
           //   ),
           // ),
           // flexible(height give than work otherwise its flexible) to expanded(even-though height inside the widget , the widget occupy complete space
           Flexible(
             flex: 5,
             fit: FlexFit.tight,
             child: Container(
               height: 50,
               color: Colors.blue,
             ),
           ),
           Flexible(
             flex: 4,
             fit: FlexFit.tight,
             child: Container(
               height: 100,
               color: Colors.orange,
             ),
           ),
           Flexible(
             flex: 3,
             fit: FlexFit.tight,
             child: Container(
               height: 200,
               color: Colors.red,
             ),
           ),
         ],
       ),
     );
   }
 }
 //expandedAndFlexible.png

''';
