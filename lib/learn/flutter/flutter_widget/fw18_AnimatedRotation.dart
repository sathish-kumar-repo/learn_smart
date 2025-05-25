import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets18_AnimatedRotation.dart';

class FlutterAnimatedRotationFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedRotationFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedRotationFlutterAllWidgets> createState() =>
      _FlutterAnimatedRotationFlutterAllWidgetsState();
}

class _FlutterAnimatedRotationFlutterAllWidgetsState
    extends State<FlutterAnimatedRotationFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedRotation Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedRotationWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedRotationWidget extends StatefulWidget {
   const AnimatedRotationWidget({super.key});
 
   @override
   State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
 }
 
 class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
   double turns = 0.0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedRotation Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Padding(
               padding: const EdgeInsets.all(50),
               child: AnimatedRotation(
                 turns: turns,
                 duration: const Duration(seconds: 1),
                 child: const FlutterLogo(
                   size: 100,
                 ),
               ),
             ),
             ElevatedButton(
               onPressed: () {
                 setState(() => turns += 1 / 4);
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.orangeAccent,
               ),
               child: const Text('Rotate Logo'),
             )
           ],
         ),
       ),
     );
   }
 }

''';
