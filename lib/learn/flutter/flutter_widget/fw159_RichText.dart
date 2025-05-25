import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets159_RichText.dart';

class FlutterRichTextFlutterAllWidgets extends StatefulWidget {
  const FlutterRichTextFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRichTextFlutterAllWidgets> createState() =>
      _FlutterRichTextFlutterAllWidgetsState();
}

class _FlutterRichTextFlutterAllWidgetsState
    extends State<FlutterRichTextFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 159,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RichText Widget'),
          const H3('Click to View Live'),
          const Live(page: RichTextWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RichTextWidget extends StatefulWidget {
   const RichTextWidget({super.key});
 
   @override
   State<RichTextWidget> createState() => _RichTextWidgetState();
 }
 
 class _RichTextWidgetState extends State<RichTextWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black45,
       appBar: AppBar(
         title: const Text("RichText Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: RichText(
             const TextSpan(
             style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
             children: <TextSpan>[
               TextSpan(  'To the '),
               TextSpan(
                   'moon ',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                 ),
               ),
               TextSpan(  'and beyond!'),
             ],
           ),
         ),
       ),
     );
   }
 }

''';
