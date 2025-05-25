import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets190_SwitchListTile.dart';

class FlutterSwitchListTileFlutterAllWidgets extends StatefulWidget {
  const FlutterSwitchListTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSwitchListTileFlutterAllWidgets> createState() =>
      _FlutterSwitchListTileFlutterAllWidgetsState();
}

class _FlutterSwitchListTileFlutterAllWidgetsState
    extends State<FlutterSwitchListTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 190,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SwitchListTile Widget'),
          const H3('Click to View Live'),
          const Live(page: SwitchListTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SwitchListTileWidget extends StatefulWidget {
   const SwitchListTileWidget({super.key});
 
   @override
   State<SwitchListTileWidget> createState() => _SwitchListTileWidgetState();
 }
 
 class _SwitchListTileWidgetState extends State<SwitchListTileWidget> {
   bool lights = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SwitchListTile Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SwitchListTile(
           title: const Text('Lights'),
           value: lights,
           onChanged: (bool value) {
             setState(() {
               lights = value;
             });
           },
           secondary: const Icon(Icons.lightbulb_outline),
         ),
       ),
     );
   }
 }

''';
