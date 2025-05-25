import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets05_Align.dart';

class FlutterAlignFlutterAllWidgets extends StatefulWidget {
  const FlutterAlignFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAlignFlutterAllWidgets> createState() =>
      _FlutterAlignFlutterAllWidgetsState();
}

class _FlutterAlignFlutterAllWidgetsState
    extends State<FlutterAlignFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align Widget'),
          const H3('Click to View Live'),
          const Live(page: AlignWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AlignWidget extends StatefulWidget {
   const AlignWidget({super.key});
 
   @override
   State<AlignWidget> createState() => _AlignWidgetState();
 }
 
 class _AlignWidgetState extends State<AlignWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Align Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Container(
           height: 120.0,
           width: double.infinity,
           color: Colors.blueGrey,
           child: const Align(
             alignment: Alignment.centerLeft,
             child: FlutterLogo(
               size: 60,
             ),
           ),
         ),
       ),
     );
   }
 }

''';
