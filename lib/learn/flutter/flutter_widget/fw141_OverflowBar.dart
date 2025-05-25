import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets141_OverflowBar.dart';

class FlutterOverflowBarFlutterAllWidgets extends StatefulWidget {
  const FlutterOverflowBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterOverflowBarFlutterAllWidgets> createState() =>
      _FlutterOverflowBarFlutterAllWidgetsState();
}

class _FlutterOverflowBarFlutterAllWidgetsState
    extends State<FlutterOverflowBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 141,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('OverflowBar Widget'),
          const H3('Click to View Live'),
          const Live(page: OverflowBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OverflowBarWidget extends StatefulWidget {
   const OverflowBarWidget({super.key});
 
   @override
   State<OverflowBarWidget> createState() => _OverflowBarWidgetState();
 }
 
 class _OverflowBarWidgetState extends State<OverflowBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("OverflowBar Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         // this widget mix between row and column widget
         child: OverflowBar(
           spacing: 8,
           children: [
             ElevatedButton(
               onPressed: () {},
               child: Text('Learn Smart'),
             ),
             ElevatedButton(
               onPressed: () {},
               child: Text('Learn Smart'),
             ),
             ElevatedButton(
               onPressed: () {},
               child: Text('Learn Smart'),
             ),
             ElevatedButton(
               onPressed: () {},
               child: Text('Learn Smart'),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
