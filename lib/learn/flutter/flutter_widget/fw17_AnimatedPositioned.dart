import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets17_AnimatedPositioned.dart';

class FlutterAnimatedPositionedFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedPositionedFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterAnimatedPositionedFlutterAllWidgets> createState() =>
      _FlutterAnimatedPositionedFlutterAllWidgetsState();
}

class _FlutterAnimatedPositionedFlutterAllWidgetsState
    extends State<FlutterAnimatedPositionedFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedPositioned Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedPositionedWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedPositionedWidget extends StatefulWidget {
   const AnimatedPositionedWidget({super.key});
 
   @override
   State<AnimatedPositionedWidget> createState() =>
       _AnimatedPositionedWidgetState();
 }
 
 class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
   bool selected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedPositioned Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         width: 200,
         height: 350,
         child: Stack(
           children: [
             AnimatedPositioned(
               width: selected ? 200.0 : 50.0,
               height: selected ? 50.0 : 200.0,
               top: selected ? 50.0 : 150.0,
               duration: Duration(seconds: 2),
               curve: Curves.fastOutSlowIn,
               child: GestureDetector(
                 onTap: () {
                   setState(() {
                     selected = !selected;
                   });
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.orangeAccent,
                     borderRadius: BorderRadius.circular(25),
                   ),
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
