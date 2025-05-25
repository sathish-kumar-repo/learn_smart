import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets204_Transform.dart';

class FlutterTransformFlutterAllWidgets extends StatefulWidget {
  const FlutterTransformFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTransformFlutterAllWidgets> createState() =>
      _FlutterTransformFlutterAllWidgetsState();
}

class _FlutterTransformFlutterAllWidgetsState
    extends State<FlutterTransformFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 204,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Transform Widget'),
          const H3('Click to View Live'),
          const Live(page: TransformWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'dart:math';
 
 import 'package:flutter/material.dart';
 
 class TransformWidget extends StatefulWidget {
   const TransformWidget({super.key});
 
   @override
   State<TransformWidget> createState() => _TransformWidgetState();
 }
 
 class _TransformWidgetState extends State<TransformWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Transform Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Transform(
           transform: Matrix4.rotationZ(pi * 1 / 4),
           alignment: Alignment.center,
           child: Image.asset('assets/images/3.jpg'),
         ),
       ),
     );
   }
 }

''';
