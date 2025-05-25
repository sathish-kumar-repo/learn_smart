import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets116_IgnorePointer.dart';

class FlutterIgnorePointerFlutterAllWidgets extends StatefulWidget {
  const FlutterIgnorePointerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterIgnorePointerFlutterAllWidgets> createState() =>
      _FlutterIgnorePointerFlutterAllWidgetsState();
}

class _FlutterIgnorePointerFlutterAllWidgetsState
    extends State<FlutterIgnorePointerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 116,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IgnorePointer Widget'),
          const H3('Click to View Live'),
          const Live(page: IgnorePointerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class IgnorePointerWidget extends StatefulWidget {
   const IgnorePointerWidget({super.key});
 
   @override
   State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
 }
 
 class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
   bool ignore = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("IgnorePointer Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           children: [
             ElevatedButton(
               onPressed: () {
                 setState(() {
                   ignore = !ignore;
                 });
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: ignore ? Colors.red : Colors.green,
               ),
               child: Text(ignore ? 'Blocked' : 'All good'),
             ),
             IgnorePointer(
               ignoring: ignore,
               child: ElevatedButton(
                 onPressed: () {},
                 child: const Text('Click Me'),
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
