import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets07_AnimatedBuilder.dart';

class FlutterAnimatedBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedBuilderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedBuilderFlutterAllWidgets> createState() =>
      _FlutterAnimatedBuilderFlutterAllWidgetsState();
}

class _FlutterAnimatedBuilderFlutterAllWidgetsState
    extends State<FlutterAnimatedBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedBuilderWidgets()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 import 'dart:math' as math;
 
 class AnimatedBuilderWidgets extends StatefulWidget {
   const AnimatedBuilderWidgets({super.key});
 
   @override
   State<AnimatedBuilderWidgets> createState() => _AnimatedBuilderWidgetsState();
 }
 
 class _AnimatedBuilderWidgetsState extends State<AnimatedBuilderWidgets>
     with TickerProviderStateMixin {
   late final AnimationController _controller = AnimationController(
     duration: const Duration(seconds: 10),
     vsync: this,
   )..repeat();
 
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedBuilder Widgets"),
         centerTitle: true,
       ),
       body: Center(
         child: AnimatedBuilder(
           animation: _controller,
           child: const FlutterLogo(
             size: 100,
           ),
           builder: (BuildContext context, Widget? child) {
             print(_controller);
             return Transform.rotate(
               angle: _controller.value * 2.0 * math.pi,
               child: child,
             );
           },
         ),
       ),
     );
   }
 }

''';
