import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets24_BackdropFilter.dart';

class FlutterBackdropFilterFlutterAllWidgets extends StatefulWidget {
  const FlutterBackdropFilterFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterBackdropFilterFlutterAllWidgets> createState() =>
      _FlutterBackdropFilterFlutterAllWidgetsState();
}

class _FlutterBackdropFilterFlutterAllWidgetsState
    extends State<FlutterBackdropFilterFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('BackdropFilter Widget'),
          const H3('Click to View Live'),
          const Live(page: BackdropFilterWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'dart:ui';
 
 import 'package:flutter/material.dart';
 
 class BackdropFilterWidget extends StatefulWidget {
   const BackdropFilterWidget({super.key});
 
   @override
   State<BackdropFilterWidget> createState() => _BackdropFilterWidgetState();
 }
 
 class _BackdropFilterWidgetState extends State<BackdropFilterWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("BackdropFilter Widget"),
         centerTitle: true,
       ),
       body: Stack(
         children: [
           Text(
             '0' * 10000,
             style: const TextStyle(
               color: Colors.pinkAccent,
             ),
           ),
           Center(
             child: ClipRect(
               child: BackdropFilter(
                 filter: ImageFilter.blur(
                   sigmaX: 4.0,
                   sigmaY: 4.0,
                   // sigmaX and sigmaY this is know the direction of the blur
                 ),
                 child: Container(
                   alignment: Alignment.center,
                   width: 250,
                    ,
                   child: const Text('Blur'),
                 ),
               ),
             ),
           )
         ],
       ),
     );
   }
 }

''';
