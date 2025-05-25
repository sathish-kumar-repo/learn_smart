import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets211_FractionalTranslation.dart';

class FlutterFractionalTranslationFlutterAllWidgets extends StatefulWidget {
  const FlutterFractionalTranslationFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterFractionalTranslationFlutterAllWidgets> createState() =>
      _FlutterFractionalTranslationFlutterAllWidgetsState();
}

class _FlutterFractionalTranslationFlutterAllWidgetsState
    extends State<FlutterFractionalTranslationFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 211,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FractionalTranslation Widget'),
          const H3('Click to View Live'),
          const Live(page: FractionalTranslationWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FractionalTranslationWidget extends StatefulWidget {
   const FractionalTranslationWidget({super.key});
 
   @override
   State<FractionalTranslationWidget> createState() =>
       _FractionalTranslationWidgetState();
 }
 
 class _FractionalTranslationWidgetState
     extends State<FractionalTranslationWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FractionalTranslation Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Container(
             color: Colors.blueGrey,
             width: 100,
             height: 100,
           ),
           FractionalTranslation(
             translation: const Offset(1, -1),
             child: Container(
               color: Colors.orangeAccent,
               width: 100,
               height: 100,
             ),
           ),
           FractionalTranslation(
             translation: const Offset(1, -1),
             child: Container(
               color: Colors.red,
               width: 100,
               height: 100,
             ),
           ),
         ],
       ),
     );
   }
 }

''';
