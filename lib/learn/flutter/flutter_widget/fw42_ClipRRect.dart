import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets42_ClipRRect.dart';

class FlutterClipRRectFlutterAllWidgets extends StatefulWidget {
  const FlutterClipRRectFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterClipRRectFlutterAllWidgets> createState() =>
      _FlutterClipRRectFlutterAllWidgetsState();
}

class _FlutterClipRRectFlutterAllWidgetsState
    extends State<FlutterClipRRectFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 42,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ClipRRect Widget'),
          const H3('Click to View Live'),
          const Live(page: ClipRRectWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ClipRRectWidget extends StatefulWidget {
   const ClipRRectWidget({super.key});
 
   @override
   State<ClipRRectWidget> createState() => _ClipRRectWidgetState();
 }
 
 class _ClipRRectWidgetState extends State<ClipRRectWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ClipRRect Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ClipRRect(
           borderRadius: BorderRadius.circular(30),
           child: Image.asset(
             'assets/images/6.jpg',
             width: 350,
           ),
         ),
       ),
     );
   }
 }

''';
