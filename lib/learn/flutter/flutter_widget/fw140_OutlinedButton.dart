import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets140_OutlinedButton.dart';

class FlutterOutlinedButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterOutlinedButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterOutlinedButtonFlutterAllWidgets> createState() =>
      _FlutterOutlinedButtonFlutterAllWidgetsState();
}

class _FlutterOutlinedButtonFlutterAllWidgetsState
    extends State<FlutterOutlinedButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 140,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('OutlinedButton Widget'),
          const H3('Click to View Live'),
          const Live(page: OutlinedButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OutlinedButtonWidget extends StatefulWidget {
   const OutlinedButtonWidget({super.key});
 
   @override
   State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
 }
 
 class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("OutlinedButton Widget"),
         centerTitle: true,
       ),
       body: OutlinedButton(
         onPressed: () {},
         style: OutlinedButton.styleFrom(
           foregroundColor: Colors.white,
           backgroundColor: Colors.orangeAccent,
         ),
         child: const Text('Click Me'),
       ),
     );
   }
 }

''';
