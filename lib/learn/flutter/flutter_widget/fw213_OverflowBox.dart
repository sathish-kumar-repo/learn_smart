import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets213_OverflowBox.dart';

class FlutterOverflowBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterOverflowBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterOverflowBoxFlutterAllWidgets> createState() =>
      _FlutterOverflowBoxFlutterAllWidgetsState();
}

class _FlutterOverflowBoxFlutterAllWidgetsState
    extends State<FlutterOverflowBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 213,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('OverflowBox Widget'),
          const H3('Click to View Live'),
          const Live(page: OverflowBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OverflowBoxWidget extends StatefulWidget {
   const OverflowBoxWidget({super.key});
 
   @override
   State<OverflowBoxWidget> createState() => _OverflowBoxWidgetState();
 }
 
 class _OverflowBoxWidgetState extends State<OverflowBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("OverflowBox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Container(
           width: 100,
           height: 100,
           color: Colors.orangeAccent,
           child: OverflowBox(
             maxWidth: 200,
             maxHeight: 200,
             child: Container(
               color: Colors.red.withOpacity(0.5),
               width: double.infinity,
               height: double.infinity,
             ),
           ),
         ),
       ),
     );
   }
 }

''';
