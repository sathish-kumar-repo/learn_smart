import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets125_Listener.dart';

class FlutterListenerFlutterAllWidgets extends StatefulWidget {
  const FlutterListenerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterListenerFlutterAllWidgets> createState() =>
      _FlutterListenerFlutterAllWidgetsState();
}

class _FlutterListenerFlutterAllWidgetsState
    extends State<FlutterListenerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 125,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Listener Widget'),
          const H3('Click to View Live'),
          const Live(page: ListenerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ListenerWidget extends StatefulWidget {
   const ListenerWidget({super.key});
 
   @override
   State<ListenerWidget> createState() => _ListenerWidgetState();
 }
 
 class _ListenerWidgetState extends State<ListenerWidget> {
   int numberOfPresses = 0;
   int numberOfRelease = 0;
   double x = 0.0;
   double y = 0.0;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Listener Widget"),
         centerTitle: true,
       ),
       body: Listener(
         onPointerDown: (PointerDownEvent event) {
           setState(() {
             numberOfPresses++;
           });
         },
         onPointerMove: (PointerEvent details) {
           setState(() {
             x = details.position.dx;
             y = details.position.dy;
           });
         },
         onPointerUp: (PointerUpEvent event) {
           setState(() {
             numberOfRelease++;
           });
         },
         child: Container(
           width: double.infinity,
           height: double.infinity,
           color: Colors.grey,
           child: Column(
             children: [
               Text(
                 'presses: \$numberOfPresses',
                 style: const TextStyle(
                   fontSize: 40,
                 ),
               ),
               Text(
                 'presses: \$numberOfRelease',
                 style: const TextStyle(
                   fontSize: 40,
                 ),
               ),
               Text(
                 'Cursor: (\${x.toStringAsFixed(2)}, \${y.toStringAsFixed(2)})',
                 style: const TextStyle(
                   fontSize: 25,
                 ),
               )
             ],
           ),
         ),
       ),
     );
   }
 }

''';
