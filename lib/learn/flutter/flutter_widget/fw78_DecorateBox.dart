import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets78_DecorateBox.dart';

class FlutterDecorateBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterDecorateBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDecorateBoxFlutterAllWidgets> createState() =>
      _FlutterDecorateBoxFlutterAllWidgetsState();
}

class _FlutterDecorateBoxFlutterAllWidgetsState
    extends State<FlutterDecorateBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 78,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DecorateBox Widget'),
          const H3('Click to View Live'),
          const Live(page: DecoratedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DecorateBoxWidget extends StatefulWidget {
   const DecorateBoxWidget({super.key});
 
   @override
   State<DecorateBoxWidget> createState() => _DecorateBoxWidgetState();
 }
 
 class _DecorateBoxWidgetState extends State<DecorateBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DecorateBox Widget"),
         centerTitle: true,
       ),
       body: const SizedBox(
         height: double.infinity,
         width: double.infinity,
         child: DecoratedBox(
           decoration: BoxDecoration(
             gradient: RadialGradient(
               colors: [
                 Colors.deepOrange,
                 Colors.purple,
               ],
             ),
           ),
         ),
       ),
     );
   }
 }

''';
