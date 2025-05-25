import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets65_CupertinoSwitch.dart';

class FlutterCupertinoSwitchFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoSwitchFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoSwitchFlutterAllWidgets> createState() =>
      _FlutterCupertinoSwitchFlutterAllWidgetsState();
}

class _FlutterCupertinoSwitchFlutterAllWidgetsState
    extends State<FlutterCupertinoSwitchFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 65,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoSwitch Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoSwitchWidget()),
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
 
 class CupertinoSwitchWidget extends StatefulWidget {
   const CupertinoSwitchWidget({super.key});
 
   @override
   State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
 }
 
 class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
   bool _lights = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoSwitch Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           children: [
             CupertinoSwitch(
               value: _lights,
               onChanged: (bool value) {
                 setState(() {
                   _lights = value;
                 });
               },
             ),
             const SizedBox(height: 50),
             // In this switch, automatically detect, if ios then consider CupertinoSwitch
             // if android then consider normal style switch for android
             Switch.adaptive(
               value: _lights,
               onChanged: (bool value) {
                 setState(() {
                   _lights = value;
                 });
               },
             ),
           ],
         ),
       ),
     );
   }
 }

''';
