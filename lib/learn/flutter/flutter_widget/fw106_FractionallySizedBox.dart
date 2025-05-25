import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets106_FractionallySizedBox.dart';

class FlutterFractionallySizedBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterFractionallySizedBoxFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterFractionallySizedBoxFlutterAllWidgets> createState() =>
      _FlutterFractionallySizedBoxFlutterAllWidgetsState();
}

class _FlutterFractionallySizedBoxFlutterAllWidgetsState
    extends State<FlutterFractionallySizedBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 106,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FractionallySizedBox Widget'),
          const H3('Click to View Live'),
          const Live(page: FractionallySizedBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FractionallySizedBoxWidget extends StatefulWidget {
   const FractionallySizedBoxWidget({super.key});
 
   @override
   State<FractionallySizedBoxWidget> createState() =>
       _FractionallySizedBoxWidgetState();
 }
 
 class _FractionallySizedBoxWidgetState
     extends State<FractionallySizedBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FractionallySizedBox Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: FractionallySizedBox(
           widthFactor: 0.5,
           heightFactor: 0.5,
           child: Container(
             color: Colors.pink,
           ),
         ),
       ),
     );
   }
 }

''';
