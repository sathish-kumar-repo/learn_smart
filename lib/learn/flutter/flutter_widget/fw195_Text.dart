import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets195_Text.dart';

class FlutterTextFlutterAllWidgets extends StatefulWidget {
  const FlutterTextFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTextFlutterAllWidgets> createState() =>
      _FlutterTextFlutterAllWidgetsState();
}

class _FlutterTextFlutterAllWidgetsState
    extends State<FlutterTextFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 195,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Text Widget'),
          const H3('Click to View Live'),
          const Live(page: TextWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TextWidget extends StatefulWidget {
   const TextWidget({super.key});
 
   @override
   State<TextWidget> createState() => _TextWidgetState();
 }
 
 class _TextWidgetState extends State<TextWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Text Widget"),
         centerTitle: true,
       ),
       body: const Padding(
         padding: EdgeInsets.all(15.0),
         child: Text(
           'This is a text which is pretty long',
           textAlign: TextAlign.center,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(
             fontWeight: FontWeight.bold,
             wordSpacing: 2,
             letterSpacing: 2,
             fontSize: 30,
           ),
         ),
       ),
     );
   }
 }

''';
