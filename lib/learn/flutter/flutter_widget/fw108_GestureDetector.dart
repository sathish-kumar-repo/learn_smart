import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets108_GestureDetector.dart';

class FlutterGestureDetectorFlutterAllWidgets extends StatefulWidget {
  const FlutterGestureDetectorFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterGestureDetectorFlutterAllWidgets> createState() =>
      _FlutterGestureDetectorFlutterAllWidgetsState();
}

class _FlutterGestureDetectorFlutterAllWidgetsState
    extends State<FlutterGestureDetectorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 108,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('GestureDetector Widget'),
          const H3('Click to View Live'),
          const Live(page: GestureDetectorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class GestureDetectorWidget extends StatefulWidget {
   const GestureDetectorWidget({super.key});
 
   @override
   State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
 }
 
 class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
   int _counter = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("GestureDetector Widget"),
         centerTitle: true,
       ),
       body: GestureDetector(
         onTap: () {
           setState(() {
             _counter += 1;
           });
         },
         child: Container(
           height: 200,
           width: 200,
           color: Colors.orangeAccent,
           child: Center(
             child: Text(
               _counter.toString(),
               style: const TextStyle(
                 fontSize: 50,
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
