import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets32_Center.dart';

class FlutterCenterFlutterAllWidgets extends StatefulWidget {
  const FlutterCenterFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCenterFlutterAllWidgets> createState() =>
      _FlutterCenterFlutterAllWidgetsState();
}

class _FlutterCenterFlutterAllWidgetsState
    extends State<FlutterCenterFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 32,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Center Widget'),
          const H3('Click to View Live'),
          const Live(page: CenterWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CenterWidget extends StatefulWidget {
   const CenterWidget({super.key});
 
   @override
   State<CenterWidget> createState() => _CenterWidgetState();
 }
 
 class _CenterWidgetState extends State<CenterWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Center Widget"),
         centerTitle: true,
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
             color: Colors.pinkAccent,
             child: const Center(
               // it only possible is in column widget and if the container have any height then heightfactor is not working
               heightFactor: 5, // to multiply the current widget height by 5
               widthFactor: 2, // similar to heightfactor
               child: Text('Center Widget'),
             ),
           )
         ],
       ),
     );
   }
 }

''';
