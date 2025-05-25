import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets189_Switch.dart';

class FlutterSwitchFlutterAllWidgets extends StatefulWidget {
  const FlutterSwitchFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSwitchFlutterAllWidgets> createState() =>
      _FlutterSwitchFlutterAllWidgetsState();
}

class _FlutterSwitchFlutterAllWidgetsState
    extends State<FlutterSwitchFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 189,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Switch Widget'),
          const H3('Click to View Live'),
          const Live(page: SwitchWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SwitchWidget extends StatefulWidget {
   const SwitchWidget({super.key});
 
   @override
   State<SwitchWidget> createState() => _SwitchWidgetState();
 }
 
 class _SwitchWidgetState extends State<SwitchWidget> {
   bool isSwitched = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Switch Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Switch(
           value: isSwitched,
           onChanged: (value) {
             setState(() {
               isSwitched = value;
             });
           },
         ),
       ),
     );
   }
 }

''';
