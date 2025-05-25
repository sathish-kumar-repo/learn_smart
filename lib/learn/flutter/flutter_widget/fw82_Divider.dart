import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets82_Divider.dart';

class FlutterDividerFlutterAllWidgets extends StatefulWidget {
  const FlutterDividerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDividerFlutterAllWidgets> createState() =>
      _FlutterDividerFlutterAllWidgetsState();
}

class _FlutterDividerFlutterAllWidgetsState
    extends State<FlutterDividerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 82,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Divider Widget'),
          const H3('Click to View Live'),
          const Live(page: DividerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DividerWidget extends StatefulWidget {
   const DividerWidget({super.key});
 
   @override
   State<DividerWidget> createState() => _DividerWidgetState();
 }
 
 class _DividerWidgetState extends State<DividerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Divider Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           children: [
             Container(
               height: 200,
               width: double.infinity,
               color: Colors.orange,
             ),
             const Divider(
               color: Colors.white,
               height: 20,
               thickness: 5,
               indent: 20,
               endIndent: 40,
             ),
             Container(
               height: 200,
               width: double.infinity,
               color: Colors.orange,
             ),
           ],
         ),
       ),
     );
   }
 }

''';
