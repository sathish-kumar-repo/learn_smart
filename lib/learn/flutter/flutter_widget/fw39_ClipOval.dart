import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets39_ClipOval.dart';

class FlutterClipOvalFlutterAllWidgets extends StatefulWidget {
  const FlutterClipOvalFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterClipOvalFlutterAllWidgets> createState() =>
      _FlutterClipOvalFlutterAllWidgetsState();
}

class _FlutterClipOvalFlutterAllWidgetsState
    extends State<FlutterClipOvalFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 39,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ClipOval Widget'),
          const H3('Click to View Live'),
          const Live(page: ClipOvalWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ClipOvalWidget extends StatefulWidget {
   const ClipOvalWidget({super.key});
 
   @override
   State<ClipOvalWidget> createState() => _ClipOvalWidgetState();
 }
 
 class _ClipOvalWidgetState extends State<ClipOvalWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ClipOval Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ClipOval(
           clipper: CustomClip(),
           child: Container(
             width: 80,
             height: 80,
             color: Colors.pinkAccent,
           ),
         ),
       ),
     );
   }
 }
 
 class CustomClip extends CustomClipper<Rect> {
   @override
   Rect getClip(Size size) {
     // print(size);
     return Rect.fromLTWH(0, 0, size.width - 15, size.height);
   }
 
   @override
   bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
     return false;
     //return false because we remove 15 from the size of the width
   }
 }

''';
