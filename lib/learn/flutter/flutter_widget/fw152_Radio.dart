import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets152_Radio.dart';

class FlutterRadioFlutterAllWidgets extends StatefulWidget {
  const FlutterRadioFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRadioFlutterAllWidgets> createState() =>
      _FlutterRadioFlutterAllWidgetsState();
}

class _FlutterRadioFlutterAllWidgetsState
    extends State<FlutterRadioFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 152,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Radio Widget'),
          const H3('Click to View Live'),
          const Live(page: RadioWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RadioWidget extends StatefulWidget {
   const RadioWidget({super.key});
 
   @override
   State<RadioWidget> createState() => _RadioWidgetState();
 }
 
 List<String> options = [
   'Option 1',
   'Option 2',
 ];
 
 class _RadioWidgetState extends State<RadioWidget> {
   String currentOption = options[0];
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Radio Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           ListTile(
             title: const Text('Option 1'),
             leading: Radio(
               value: options[0],
               groupValue: currentOption,
               onChanged: (value) {
                 setState(() {
                   currentOption = value.toString();
                   // print('1 \$currentOption');
                 });
               },
             ),
           ),
           ListTile(
             title: const Text('Option 2'),
             leading: Radio(
               value: options[1],
               groupValue: currentOption,
               onChanged: (value) {
                 setState(() {
                   currentOption = value.toString();
                   // print('2 \$currentOption');
                 });
               },
             ),
           ),
         ],
       ),
     );
   }
 }

''';
