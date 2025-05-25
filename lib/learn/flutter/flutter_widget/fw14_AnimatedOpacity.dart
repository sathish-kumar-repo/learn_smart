import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets14_AnimatedOpacity.dart';

class FlutterAnimatedOpacityFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedOpacityFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedOpacityFlutterAllWidgets> createState() =>
      _FlutterAnimatedOpacityFlutterAllWidgetsState();
}

class _FlutterAnimatedOpacityFlutterAllWidgetsState
    extends State<FlutterAnimatedOpacityFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedOpacity Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedOpacityWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedOpacityWidget extends StatefulWidget {
   const AnimatedOpacityWidget({super.key});
 
   @override
   State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
 }
 
 class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
   double opacityLevel = 1.0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedOpacity Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             AnimatedOpacity(
               opacity: opacityLevel,
               duration: const Duration(seconds: 2),
               child: const FlutterLogo(size: 50),
             ),
             ElevatedButton(
               onPressed: () {
                 setState(
                   () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                 );
               },
               child: const Text(
                 'Fade Logo',
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
