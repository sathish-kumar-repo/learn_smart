import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets120_InputChip.dart';

class FlutterInputChipFlutterAllWidgets extends StatefulWidget {
  const FlutterInputChipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterInputChipFlutterAllWidgets> createState() =>
      _FlutterInputChipFlutterAllWidgetsState();
}

class _FlutterInputChipFlutterAllWidgetsState
    extends State<FlutterInputChipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 120,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('InputChip Widget'),
          const H3('Click to View Live'),
          const Live(page: InputChipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class InputChipWidget extends StatefulWidget {
   const InputChipWidget({super.key});
 
   @override
   State<InputChipWidget> createState() => _InputChipWidgetState();
 }
 
 class _InputChipWidgetState extends State<InputChipWidget> {
   bool isSelected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("InputChip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: InputChip(
           avatar: const CircleAvatar(
             backgroundImage: AssetImage('assets/images/3.jpg'),
           ),
           label: const Text('Picture'),
           onSelected: (bool newBool) {
             setState(() {
               isSelected = !isSelected;
             });
           },
           selected: isSelected,
           selectedColor: Colors.white38,
           deleteIcon: const Icon(Icons.cancel_outlined),
           onDeleted: () {},
         ),
       ),
     );
   }
 }

''';
