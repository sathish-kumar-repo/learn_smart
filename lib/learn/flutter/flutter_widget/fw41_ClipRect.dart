import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets41_ClipRect.dart';

class FlutterClipRectFlutterAllWidgets extends StatefulWidget {
  const FlutterClipRectFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterClipRectFlutterAllWidgets> createState() =>
      _FlutterClipRectFlutterAllWidgetsState();
}

class _FlutterClipRectFlutterAllWidgetsState
    extends State<FlutterClipRectFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 41,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ClipRect Widget'),
          const H3('Click to View Live'),
          const Live(page: ClipRectWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ClipRectWidget extends StatefulWidget {
   const ClipRectWidget({super.key});
 
   @override
   State<ClipRectWidget> createState() => _ClipRectWidgetState();
 }
 
 class _ClipRectWidgetState extends State<ClipRectWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ClipRect Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ClipRect(
           clipper: MyClipper_ClipRect(),
           child: Container(
             width: 3000,
             height: 3000,
             color: Colors.pinkAccent,
           ),
         ),
       ),
     );
   }
 }
 
 class MyClipper_ClipRect extends CustomClipper<Rect> {
   @override
   Rect getClip(Size size) {
     return const Rect.fromLTWH(50, 50, 80, 80);
   }
 
   @override
   bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
     return false;
   }
 }

''';
