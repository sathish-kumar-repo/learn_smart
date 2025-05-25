import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets167_SelectableText.dart';

class FlutterSelectableTextFlutterAllWidgets extends StatefulWidget {
  const FlutterSelectableTextFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSelectableTextFlutterAllWidgets> createState() =>
      _FlutterSelectableTextFlutterAllWidgetsState();
}

class _FlutterSelectableTextFlutterAllWidgetsState
    extends State<FlutterSelectableTextFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 167,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SelectableText Widget'),
          const H3('Click to View Live'),
          const Live(page: SelectableTextWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SelectableTextWidget extends StatefulWidget {
   const SelectableTextWidget({super.key});
 
   @override
   State<SelectableTextWidget> createState() => _SelectableTextWidgetState();
 }
 
 class _SelectableTextWidgetState extends State<SelectableTextWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SelectableText Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SelectableText(
           'This is a selectable text',
           style: const TextStyle(fontSize: 30),
           onSelectionChanged: (selection, cause) {
             print(selection);
             print(cause);
           },
         ),
       ),
     );
   }
 }

''';
