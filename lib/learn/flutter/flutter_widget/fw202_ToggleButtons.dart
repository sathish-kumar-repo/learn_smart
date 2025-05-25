import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets202_ToggleButtons.dart';

class FlutterToggleButtonsFlutterAllWidgets extends StatefulWidget {
  const FlutterToggleButtonsFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterToggleButtonsFlutterAllWidgets> createState() =>
      _FlutterToggleButtonsFlutterAllWidgetsState();
}

class _FlutterToggleButtonsFlutterAllWidgetsState
    extends State<FlutterToggleButtonsFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 202,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ToggleButtons Widget'),
          const H3('Click to View Live'),
          const Live(page: ToggleButtonsWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ToggleButtonsWidget extends StatefulWidget {
   const ToggleButtonsWidget({super.key});
 
   @override
   State<ToggleButtonsWidget> createState() => _ToggleButtonsWidgetState();
 }
 
 class _ToggleButtonsWidgetState extends State<ToggleButtonsWidget> {
   List<bool> isSelected = [
     false,
     false,
     false,
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ToggleButtons Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ToggleButtons(
           onPressed: (int index) {
             setState(() {
               isSelected[index] = !isSelected[index];
             });
           },
           isSelected: isSelected,
           children: const [
             Icon(Icons.home),
             Icon(Icons.settings),
             Icon(Icons.person),
           ],
         ),
       ),
     );
   }
 }

''';
