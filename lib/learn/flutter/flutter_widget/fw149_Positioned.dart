import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets149_Positioned.dart';

class FlutterPositionedFlutterAllWidgets extends StatefulWidget {
  const FlutterPositionedFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPositionedFlutterAllWidgets> createState() =>
      _FlutterPositionedFlutterAllWidgetsState();
}

class _FlutterPositionedFlutterAllWidgetsState
    extends State<FlutterPositionedFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 149,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Positioned Widget'),
          const H3('Click to View Live'),
          const Live(page: PositionedWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PositionedWidget extends StatefulWidget {
   const PositionedWidget({super.key});
 
   @override
   State<PositionedWidget> createState() => _PositionedWidgetState();
 }
 
 class _PositionedWidgetState extends State<PositionedWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Positioned Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Stack(
           children: [
             Positioned(
               left: 20,
               top: 20,
               child: Image.asset(
                 'assets/images/3.jpg',
                 width: 250,
               ),
             ),
             Positioned(
               left: 60,
               top: 120,
               child: Image.asset(
                 'assets/images/4.jpg',
                 width: 250,
               ),
             ),
             Positioned(
               left: 100,
               top: 220,
               child: Image.asset(
                 'assets/images/5.jpg',
                 width: 250,
               ),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
