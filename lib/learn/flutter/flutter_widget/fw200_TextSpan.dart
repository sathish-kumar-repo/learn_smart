import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets200_TextSpan.dart';

class FlutterTextSpanFlutterAllWidgets extends StatefulWidget {
  const FlutterTextSpanFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTextSpanFlutterAllWidgets> createState() =>
      _FlutterTextSpanFlutterAllWidgetsState();
}

class _FlutterTextSpanFlutterAllWidgetsState
    extends State<FlutterTextSpanFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 200,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TextSpan Widget'),
          const H3('Click to View Live'),
          const Live(page: TextSpanWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TextSpanWidget extends StatefulWidget {
   const TextSpanWidget({super.key});
 
   @override
   State<TextSpanWidget> createState() => _TextSpanWidgetState();
 }
 
 class _TextSpanWidgetState extends State<TextSpanWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TextSpan Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: Text.rich(
           TextSpan(
               style: TextStyle(
                 fontSize: 25,
                 color: Colors.blueGrey,
               ),
                 'Flutter',
               children: [
                 TextSpan(
                     ' to the moon',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.orangeAccent,
                   ),
                 )
               ]),
         ),
       ),
     );
   }
 }

''';
