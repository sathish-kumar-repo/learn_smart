import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets44_ColoredBox.dart';

class FlutterColoredBoxFlutterAllWidgets extends StatefulWidget {
  const FlutterColoredBoxFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterColoredBoxFlutterAllWidgets> createState() =>
      _FlutterColoredBoxFlutterAllWidgetsState();
}

class _FlutterColoredBoxFlutterAllWidgetsState
    extends State<FlutterColoredBoxFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 44,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ColoredBox Widget'),
          const H3('Click to View Live'),
          const Live(page: ColoredBoxWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ColoredBoxWidget extends StatefulWidget {
   const ColoredBoxWidget({super.key});
 
   @override
   State<ColoredBoxWidget> createState() => _ColoredBoxWidgetState();
 }
 
 class _ColoredBoxWidgetState extends State<ColoredBoxWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ColoredBox Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: ColoredBox(
           color: Colors.purple,
           child: SizedBox(
             width: 100,
             height: 100,
           ),
         ),
       ),
     );
   }
 }

''';
