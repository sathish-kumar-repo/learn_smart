import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets203_Tooltip.dart';

class FlutterTooltipFlutterAllWidgets extends StatefulWidget {
  const FlutterTooltipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTooltipFlutterAllWidgets> createState() =>
      _FlutterTooltipFlutterAllWidgetsState();
}

class _FlutterTooltipFlutterAllWidgetsState
    extends State<FlutterTooltipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 203,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Tooltip Widget'),
          const H3('Click to View Live'),
          const Live(page: TooltipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TooltipWidget extends StatefulWidget {
   const TooltipWidget({super.key});
 
   @override
   State<TooltipWidget> createState() => _TooltipWidgetState();
 }
 
 class _TooltipWidgetState extends State<TooltipWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Tooltip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Tooltip(
           message: 'This is an image',
           child: Image.asset('assets/images/3.jpg'),
         ),
       ),
     );
   }
 }

''';
