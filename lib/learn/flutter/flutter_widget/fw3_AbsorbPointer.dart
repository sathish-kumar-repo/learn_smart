import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets03_AbsorbPointer.dart';

class FlutterAbsorbPointerFlutterAllWidgets extends StatefulWidget {
  const FlutterAbsorbPointerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAbsorbPointerFlutterAllWidgets> createState() =>
      _FlutterAbsorbPointerFlutterAllWidgetsState();
}

class _FlutterAbsorbPointerFlutterAllWidgetsState
    extends State<FlutterAbsorbPointerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AbsorbPointer Widget'),
          const H3('Click to View Live'),
          const Live(page: AbsorbPointerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AbsorbPointerWidget extends StatefulWidget {
   const AbsorbPointerWidget({super.key});
 
   @override
   State<AbsorbPointerWidget> createState() => _AbsorbPointerWidgetState();
 }
 
 class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AbsorbPointer Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Stack(
           alignment: AlignmentDirectional.center,
           children: <Widget>[
             SizedBox(
               width: 200.0,
               height: 100.0,
               child: ElevatedButton(
                 onPressed: () {
                   print("Blue container is interaction");
                 },
                 child: null,
               ),
             ),
             AbsorbPointer(
               child: SizedBox(
                 width: 100.0,
                 height: 200.0,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue.shade200,
                   ),
                   onPressed: () {
                     print("Blue container with shadow 200 is interaction");
                   },
                   child: null,
                 ),
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
