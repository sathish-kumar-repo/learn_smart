import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets160_RotatedBox.dart';

class FlutterRotatedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterRotatedBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRotatedBoxFlutterAllWidgets> createState() =>
      _FlutterRotatedBoxFlutterAllWidgetsState();
}

class _FlutterRotatedBoxFlutterAllWidgetsState
    extends State<FlutterRotatedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 160,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RotatedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: RotatedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RotatedBoxWidget extends StatefulWidget {
   const RotatedBoxWidget({super.key});
 
   @override
   State<RotatedBoxWidget> createState() => _RotatedBoxWidgetState();
 }
 
 class _RotatedBoxWidgetState extends State<RotatedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("RotatedBox Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: RotatedBox(
           quarterTurns: 1,
           // quarterTurns: 2,
           child: FlutterLogo(
             size: 200,
           ),
         ),
       ),
     );
   }
 }

''';
