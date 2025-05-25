import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets61_CupertinoSearchTextField.dart';

class FlutterCupertinoSearchTextFieldFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoSearchTextFieldFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoSearchTextFieldFlutterAllWidgets> createState() =>
      _FlutterCupertinoSearchTextFieldFlutterAllWidgetsState();
}

class _FlutterCupertinoSearchTextFieldFlutterAllWidgetsState
    extends State<FlutterCupertinoSearchTextFieldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 61,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoSearchTextField Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoSearchTextFieldWidget()),
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
 
 class CupertinoSearchTextFieldWidget extends StatefulWidget {
   const CupertinoSearchTextFieldWidget({super.key});
 
   @override
   State<CupertinoSearchTextFieldWidget> createState() =>
       _CupertinoSearchTextFieldWidgetState();
 }
 
 class _CupertinoSearchTextFieldWidgetState
     extends State<CupertinoSearchTextFieldWidget> {
   final TextEditingController _textController =
       TextEditingController(  'Learn Smart');
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoSearchTextField Widget"),
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
           child: CupertinoSearchTextField(
             backgroundColor: Colors.white,
             style: const TextStyle(fontSize: 20),
             controller: _textController,
           ),
         ),
       ),
     );
   }
 }

''';
