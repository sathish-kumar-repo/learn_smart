import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets70_CustomPaint.dart';

class FlutterCustomPaintFlutterAllWidgets extends StatefulWidget {
  const FlutterCustomPaintFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCustomPaintFlutterAllWidgets> createState() =>
      _FlutterCustomPaintFlutterAllWidgetsState();
}

class _FlutterCustomPaintFlutterAllWidgetsState
    extends State<FlutterCustomPaintFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 70,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CustomPaint Widget'),
          const H3('Click to View Live'),
          const Live(page: CustomPaintWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CustomPaintWidget extends StatefulWidget {
   const CustomPaintWidget({super.key});
 
   @override
   State<CustomPaintWidget> createState() => _CustomPaintWidgetState();
 }
 
 class _CustomPaintWidgetState extends State<CustomPaintWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CustomPaint Widget"),
         centerTitle: true,
       ),
       body: Container(
         color: Colors.black,
         padding: const EdgeInsets.all(20.0),
         child: Center(
           child: CustomPaint(
             painter: DemoPainter(),
             child: const Text(
               'This is Pac-Man',
               style: TextStyle(
                 color: Colors.black,
                 backgroundColor: Colors.white54,
                 fontSize: 30,
               ),
             ),
           ),
         ),
       ),
     );
   }
 }
 
 class DemoPainter extends CustomPainter {
   @override
   void paint(Canvas canvas, Size size) {
     var center = size / 2;
     var paint = Paint()..color = Colors.pinkAccent;
     canvas.drawArc(
       Rect.fromCenter(
         center: Offset(center.width, center.height),
         width: 250,
          ,
       ),
       0.4,
       2 * 3.14 - 0.8,
       true,
       paint,
     );
   }
 
   @override
   bool shouldRepaint(covariant CustomPainter oldDelegate) {
     return false;
   }
 }

''';
