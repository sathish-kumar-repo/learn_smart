import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets156_RawChip.dart';

class FlutterRawChipFlutterAllWidgets extends StatefulWidget {
  const FlutterRawChipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRawChipFlutterAllWidgets> createState() =>
      _FlutterRawChipFlutterAllWidgetsState();
}

class _FlutterRawChipFlutterAllWidgetsState
    extends State<FlutterRawChipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 156,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RawChip Widget'),
          const H3('Click to View Live'),
          const Live(page: RawChipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RawChipWidget extends StatefulWidget {
   const RawChipWidget({super.key});
 
   @override
   State<RawChipWidget> createState() => _RawChipWidgetState();
 }
 
 class _RawChipWidgetState extends State<RawChipWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("RawChip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: RawChip(
           label: const Text('RawChip'),
           avatar: const Icon(Icons.person),
           deleteIcon: const Icon(Icons.remove_circle),
           onPressed: () {},
           onDeleted: () {},
         ),
       ),
     );
   }
 }

''';
