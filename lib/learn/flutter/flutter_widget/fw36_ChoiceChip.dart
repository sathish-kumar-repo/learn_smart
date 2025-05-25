import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets36_ChoiceChip.dart';

class FlutterChoiceChipFlutterAllWidgets extends StatefulWidget {
  const FlutterChoiceChipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterChoiceChipFlutterAllWidgets> createState() =>
      _FlutterChoiceChipFlutterAllWidgetsState();
}

class _FlutterChoiceChipFlutterAllWidgetsState
    extends State<FlutterChoiceChipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 36,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ChoiceChip Widget'),
          const H3('Click to View Live'),
          const Live(page: ChoiceChipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ChoiceChipWidget extends StatefulWidget {
   const ChoiceChipWidget({super.key});
 
   @override
   State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
 }
 
 class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
   bool isSelected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ChoiceChip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ChoiceChip(
           label: const Text(
             'Choice Chip',
             style: TextStyle(
               color: Colors.white,
             ),
           ),
           selected: isSelected,
           selectedColor: Colors.pinkAccent,
           onSelected: (newState) {
             setState(() {
               isSelected = newState;
             });
           },
           tooltip: 'Choice Chip',
           pressElevation: 5,
           elevation: 20,
           padding: const EdgeInsets.all(20),
           surfaceTintColor: Colors.blue,
         ),
       ),
     );
   }
 }

''';
