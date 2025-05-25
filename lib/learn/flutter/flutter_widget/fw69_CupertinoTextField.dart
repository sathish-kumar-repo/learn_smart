import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets69_CupertinoTextField.dart';

class FlutterCupertinoTextFieldFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoTextFieldFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoTextFieldFlutterAllWidgets> createState() =>
      _FlutterCupertinoTextFieldFlutterAllWidgetsState();
}

class _FlutterCupertinoTextFieldFlutterAllWidgetsState
    extends State<FlutterCupertinoTextFieldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 69,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoTextField Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoTextFieldWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 
 class CupertinoTextFieldWidget extends StatefulWidget {
   const CupertinoTextFieldWidget({super.key});
 
   @override
   State<CupertinoTextFieldWidget> createState() =>
       _CupertinoTextFieldWidgetState();
 }
 
 class _CupertinoTextFieldWidgetState extends State<CupertinoTextFieldWidget> {
   final TextEditingController _textController =
       TextEditingController(  'Learn Smart');
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoTextField Widget"),
         centerTitle: true,
       ),
       body: Container(
         padding: const EdgeInsets.all(10.0),
         decoration: const BoxDecoration(
           image: DecorationImage(
             image: AssetImage(
               'assets/images/back.jpg',
             ),
             fit: BoxFit.cover,
           ),
         ),
         child: Center(
           child: CupertinoTextField(
             controller: _textController,
           ),
         ),
       ),
     );
   }
 }

''';
