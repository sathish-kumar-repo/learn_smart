import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets35_Chip.dart';

class FlutterChipFlutterAllWidgets extends StatefulWidget {
  const FlutterChipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterChipFlutterAllWidgets> createState() =>
      _FlutterChipFlutterAllWidgetsState();
}

class _FlutterChipFlutterAllWidgetsState
    extends State<FlutterChipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 35,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Chip Widget'),
          const H3('Click to View Live'),
          const Live(page: ChipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ChipWidget extends StatefulWidget {
   const ChipWidget({super.key});
 
   @override
   State<ChipWidget> createState() => _ChipWidgetState();
 }
 
 class _ChipWidgetState extends State<ChipWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Chip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Chip(
           label: const Text('This is a Flutter Chip'),
           onDeleted: () {
             debugPrint('Do something');
           },
           deleteIcon: const Icon(Icons.delete),
           deleteIconColor: Colors.pinkAccent,
           backgroundColor: Colors.tealAccent,
           deleteButtonTooltipMessage: 'Click to Delete',
           shadowColor: Colors.pinkAccent,
           // iconTheme: IconThemeData(
           //   color: Colors.blueGrey,
           //   fill: 1,
           //   size: 300,
           // ),
           elevation: 20,
           labelPadding: const EdgeInsets.all(20),
           padding: const EdgeInsets.all(10),
           labelStyle: const TextStyle(fontSize: 20),
           // surfaceTintColor: Colors.yellowAccent,
           // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
         ),
       ),
     );
   }
 }

''';
