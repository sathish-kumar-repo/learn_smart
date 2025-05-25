import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets128_LongPressDraggable.dart';

class FlutterLongPressDraggableFlutterAllWidgets extends StatefulWidget {
  const FlutterLongPressDraggableFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterLongPressDraggableFlutterAllWidgets> createState() =>
      _FlutterLongPressDraggableFlutterAllWidgetsState();
}

class _FlutterLongPressDraggableFlutterAllWidgetsState
    extends State<FlutterLongPressDraggableFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 128,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('LongPressDraggable Widget'),
          const H3('Click to View Live'),
          const Live(page: LongPressDraggableWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class LongPressDraggableWidget extends StatefulWidget {
   const LongPressDraggableWidget({super.key});
 
   @override
   State<LongPressDraggableWidget> createState() =>
       _LongPressDraggableWidgetState();
 }
 
 class _LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
   Offset _offset = const Offset(100, 150);
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("LongPressDraggable Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: LayoutBuilder(
           builder: (BuildContext context, BoxConstraints constraints) {
             return Stack(
               children: [
                 Positioned(
                   left: _offset.dx,
                   top: _offset.dy,
                   child: LongPressDraggable(
                     feedback: Image.asset(
                       'assets/images/6.jpg',
                       height: 200,
                       color: Colors.orangeAccent,
                       colorBlendMode: BlendMode.colorBurn,
                     ),
                     child: Image.asset(
                       'assets/images/6.jpg',
                       height: 200,
                     ),
                     onDragEnd: (details) {
                       setState(() {
                         double adjustment = MediaQuery.of(context).size.height -
                             constraints.maxHeight;
                         print(adjustment);
                         _offset = Offset(
                             details.offset.dx, details.offset.dy - adjustment);
                       });
                     },
                   ),
                 ),
               ],
             );
           },
         ),
       ),
     );
   }
 }

''';
