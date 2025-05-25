import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets84_DragTarget.dart';

class FlutterDragTargetFlutterAllWidgets extends StatefulWidget {
  const FlutterDragTargetFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDragTargetFlutterAllWidgets> createState() =>
      _FlutterDragTargetFlutterAllWidgetsState();
}

class _FlutterDragTargetFlutterAllWidgetsState
    extends State<FlutterDragTargetFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 84,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DragTarget Widget'),
          const H3('Click to View Live'),
          const Live(page: DragTargetWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DragTargetWidget extends StatefulWidget {
   const DragTargetWidget({super.key});
 
   @override
   State<DragTargetWidget> createState() => _DragTargetWidgetState();
 }
 
 class _DragTargetWidgetState extends State<DragTargetWidget> {
   Color caughtColor = Colors.red;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DragTarget Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         width: double.infinity,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Draggable(
               data: Colors.orangeAccent,
               // onDraggableCanceled: (velocity, offset) {},
               feedback: Container(
                 width: 150.0,
                 height: 150.0,
                 color: Colors.orangeAccent.withOpacity(0.5),
                 child: const Center(
                   child: Text(
                     'Box...',
                     style: TextStyle(
                       color: Colors.white,
                       decoration: TextDecoration.none,
                       fontSize: 18.0,
                     ),
                   ),
                 ),
               ),
               child: Container(
                 width: 100.0,
                 height: 100.0,
                 color: Colors.orangeAccent,
                 child: const Center(
                   child: Text('Box'),
                 ),
               ),
             ),
             DragTarget(
               onAccept: (Color color) {
                 // caughtColor = Colors.lightGreen;
                 caughtColor = color;
               },
               builder: (BuildContext context, List<dynamic> accepted,
                   List<dynamic> rejected) {
                 // print(accepted);
                 // print(rejected);
                 return Container(
                   width: 200.0,
                   height: 200.0,
                   color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                   child: const Center(
                     child: Text('Drag here'),
                   ),
                 );
               },
             )
           ],
         ),
       ),
     );
   }
 }
 
 ///onAccept: (data) {
 //
 //             }

''';
