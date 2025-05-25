import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets153_RadioListTile.dart';

class FlutterRadioListTileFlutterAllWidgets extends StatefulWidget {
  const FlutterRadioListTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRadioListTileFlutterAllWidgets> createState() =>
      _FlutterRadioListTileFlutterAllWidgetsState();
}

class _FlutterRadioListTileFlutterAllWidgetsState
    extends State<FlutterRadioListTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 153,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RadioListTile Widget'),
          const H3('Click to View Live'),
          const Live(page: RadioListTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RadioListTileWidget extends StatefulWidget {
   const RadioListTileWidget({super.key});
 
   @override
   State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
 }
 
 List<String> options = [
   'Option 1',
   'Option 2',
 ];
 
 class _RadioListTileWidgetState extends State<RadioListTileWidget> {
   String currentOption = options[0];
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("RadioListTile Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           RadioListTile(
             title: const Text('Option 1'),
             value: options[0],
             groupValue: currentOption,
             onChanged: (value) {
               setState(() {
                 currentOption = value.toString();
               });
             },
           ),
           RadioListTile(
             title: const Text('Option 2'),
             value: options[1],
             groupValue: currentOption,
             onChanged: (value) {
               setState(() {
                 currentOption = value.toString();
               });
             },
           ),
         ],
       ),
     );
   }
 }

''';
