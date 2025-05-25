import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets134_MouseRegion.dart';

class FlutterMouseRegionFlutterAllWidgets extends StatefulWidget {
  const FlutterMouseRegionFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterMouseRegionFlutterAllWidgets> createState() =>
      _FlutterMouseRegionFlutterAllWidgetsState();
}

class _FlutterMouseRegionFlutterAllWidgetsState
    extends State<FlutterMouseRegionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 134,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('MouseRegion Widget'),
          const H3('Click to View Live'),
          const Live(page: MouseRegionWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MouseRegionWidget extends StatefulWidget {
   const MouseRegionWidget({super.key});
 
   @override
   State<MouseRegionWidget> createState() => _MouseRegionWidgetState();
 }
 
 class _MouseRegionWidgetState extends State<MouseRegionWidget> {
   int enterCount = 0;
   int exitCount = 0;
   double x = 0.0;
   double y = 0.0;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("MouseRegion Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: MouseRegion(
           onEnter: (PointerEvent details) {
             setState(() {
               enterCount++;
             });
           },
           onHover: (PointerEvent details) {
             x = details.position.dx;
             y = details.position.dy;
           },
           onExit: (PointerEvent details) {
             setState(() {
               exitCount++;
             });
           },
           child: Container(
             color: Colors.orangeAccent,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(
                   'Enters: \$enterCount',
                   style: const TextStyle(
                     fontSize: 40,
                   ),
                 ),
                 Text(
                   'Exists \$exitCount',
                   style: const TextStyle(
                     fontSize: 40,
                   ),
                 ),
                 Text(
                   'Cursor: (\${x.toStringAsFixed(2)}, \${y.toStringAsFixed(2)})',
                   style: const TextStyle(
                     fontSize: 25,
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
     );
   }
 }

''';
