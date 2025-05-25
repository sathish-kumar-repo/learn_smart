import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets09_AnimatedCrossFade.dart';

class FlutterAnimatedCrossFadeFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedCrossFadeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedCrossFadeFlutterAllWidgets> createState() =>
      _FlutterAnimatedCrossFadeFlutterAllWidgetsState();
}

class _FlutterAnimatedCrossFadeFlutterAllWidgetsState
    extends State<FlutterAnimatedCrossFadeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedCrossFade Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedCrossFadeWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedCrossFadeWidget extends StatefulWidget {
   const AnimatedCrossFadeWidget({super.key});
 
   @override
   State<AnimatedCrossFadeWidget> createState() =>
       _AnimatedCrossFadeWidgetState();
 }
 
 class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
   bool _bool = false;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedCrossFade Widget"),
         centerTitle: true,
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           const SizedBox(
             width: double.infinity,
             height: 100,
           ),
           TextButton(
             onPressed: () {
               setState(() {
                 _bool = !_bool;
               });
             },
             child: const Text(
               'Switch',
             ),
           ),
           AnimatedCrossFade(
             firstChild: Image.asset(
               'assets/images/1.jpg',
               width: double.infinity,
             ),
             secondChild: Image.asset(
               'assets/images/2.jpg',
               width: double.infinity,
             ),
             crossFadeState:
                 _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
             duration: const Duration(seconds: 1),
           )
         ],
       ),
     );
   }
 }

''';
