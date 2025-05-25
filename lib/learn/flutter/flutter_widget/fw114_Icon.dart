import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets114_Icon.dart';

class FlutterIconFlutterAllWidgets extends StatefulWidget {
  const FlutterIconFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterIconFlutterAllWidgets> createState() =>
      _FlutterIconFlutterAllWidgetsState();
}

class _FlutterIconFlutterAllWidgetsState
    extends State<FlutterIconFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 114,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Icon Widget'),
          const H3('Click to View Live'),
          const Live(page: IconWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class IconWidget extends StatefulWidget {
   const IconWidget({super.key});
 
   @override
   State<IconWidget> createState() => _IconWidgetState();
 }
 
 class _IconWidgetState extends State<IconWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Icon Widget"),
         centerTitle: true,
       ),
       body: const Icon(
         Icons.flutter_dash,
         color: Colors.orangeAccent,
         size: 200,
         shadows: [
           BoxShadow(
             color: Colors.black,
             offset: Offset(8, 8),
             spreadRadius: 10,
             blurRadius: 10,
           )
         ],
       ),
     );
   }
 }

''';
