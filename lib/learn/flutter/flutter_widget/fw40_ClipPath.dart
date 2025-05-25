import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets40_ClipPath.dart';

class FlutterClipPathFlutterAllWidgets extends StatefulWidget {
  const FlutterClipPathFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterClipPathFlutterAllWidgets> createState() =>
      _FlutterClipPathFlutterAllWidgetsState();
}

class _FlutterClipPathFlutterAllWidgetsState
    extends State<FlutterClipPathFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 40,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ClipPath Widget'),
          const H3('Click to View Live'),
          const Live(page: ClipPathWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ClipPathWidget extends StatefulWidget {
   const ClipPathWidget({super.key});
 
   @override
   State<ClipPathWidget> createState() => _ClipPathWidgetState();
 }
 
 class _ClipPathWidgetState extends State<ClipPathWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ClipPath Widget"),
         centerTitle: true,
       ),
       body: ClipPath(
         clipper: MyClipper(),
         child: Container(
           width: double.infinity,
           height: 300,
           color: Colors.pinkAccent,
         ),
       ),
     );
   }
 }
 
 class MyClipper extends CustomClipper<Path> {
   @override
   Path getClip(Size size) {
     return Path()
       ..lineTo(0, size.height)
       ..quadraticBezierTo(
         size.width / 4,
         size.height - 40,
         size.width / 2,
         size.height - 20,
       )
       ..quadraticBezierTo(
         3 / 4 * size.width,
         size.height,
         size.width,
         size.height - 30,
       )
       ..lineTo(size.width, 0);
   }
 
   @override
   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     return false;
   }
 }

''';
