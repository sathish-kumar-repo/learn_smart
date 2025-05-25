import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets175_SizedOverflowBox.dart';

class FlutterSizedOverflowBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterSizedOverflowBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSizedOverflowBoxFlutterAllWidgets> createState() =>
      _FlutterSizedOverflowBoxFlutterAllWidgetsState();
}

class _FlutterSizedOverflowBoxFlutterAllWidgetsState
    extends State<FlutterSizedOverflowBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 175,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SizedOverflowBox Widget'),
          const H3('Click to View Live'),
          const Live(page: SizedOverflowBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SizedOverflowBoxWidget extends StatefulWidget {
   const SizedOverflowBoxWidget({super.key});
 
   @override
   State<SizedOverflowBoxWidget> createState() => _SizedOverflowBoxWidgetState();
 }
 
 class _SizedOverflowBoxWidgetState extends State<SizedOverflowBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SizedOverflowBox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Container(
           color: Colors.orangeAccent,
           child: SizedOverflowBox(
             size: const Size(100, 100),
             child: ElevatedButton(
               onPressed: () {},
               child: const Text('This is a button'),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
