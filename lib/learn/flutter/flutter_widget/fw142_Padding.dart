import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets142_Padding.dart';

class FlutterPaddingFlutterAllWidgets extends StatefulWidget {
  const FlutterPaddingFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPaddingFlutterAllWidgets> createState() =>
      _FlutterPaddingFlutterAllWidgetsState();
}

class _FlutterPaddingFlutterAllWidgetsState
    extends State<FlutterPaddingFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 142,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Padding Widget'),
          const H3('Click to View Live'),
          const Live(page: PaddingWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PaddingWidget extends StatefulWidget {
   const PaddingWidget({super.key});
 
   @override
   State<PaddingWidget> createState() => _PaddingWidgetState();
 }
 
 class _PaddingWidgetState extends State<PaddingWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.grey,
       appBar: AppBar(
         title: const Text("Padding Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: Card(
           child: Padding(
             padding: EdgeInsets.all(20),
             // padding: EdgeInsets.zero,
             // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
             child: Text('Learn Smart'),
           ),
         ),
       ),
     );
   }
 }

''';
