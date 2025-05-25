import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets45_ColorFiltered.dart';

class FlutterColorFilteredFlutterAllWidgets extends StatefulWidget {
  const FlutterColorFilteredFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterColorFilteredFlutterAllWidgets> createState() =>
      _FlutterColorFilteredFlutterAllWidgetsState();
}

class _FlutterColorFilteredFlutterAllWidgetsState
    extends State<FlutterColorFilteredFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 45,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ColorFiltered Widget'),
          const H3('Click to View Live'),
          const Live(page: ColorFilteredWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ColorFilteredWidget extends StatefulWidget {
   const ColorFilteredWidget({super.key});
 
   @override
   State<ColorFilteredWidget> createState() => _ColorFilteredWidgetState();
 }
 
 class _ColorFilteredWidgetState extends State<ColorFilteredWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ColorFiltered Widget"),
         centerTitle: true,
       ),
       body: ColorFiltered(
         colorFilter: const ColorFilter.mode(Colors.white, BlendMode.color),
         child: Image.asset('assets/images/2.jpg'),
       ),
     );
   }
 }

''';
