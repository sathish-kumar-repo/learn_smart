import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets11_AnimatedIcon.dart';

class FlutterAnimatedIconFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedIconFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedIconFlutterAllWidgets> createState() =>
      _FlutterAnimatedIconFlutterAllWidgetsState();
}

class _FlutterAnimatedIconFlutterAllWidgetsState
    extends State<FlutterAnimatedIconFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedIcon Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedIconWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedIconWidget extends StatefulWidget {
   const AnimatedIconWidget({super.key});
 
   @override
   State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
 }
 
 class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
     with TickerProviderStateMixin {
   bool _isPlay = false;
   late AnimationController _controller;
 
   @override
   void initState() {
     _controller = AnimationController(
       duration: const Duration(seconds: 1),
       vsync: this,
     );
     super.initState();
   }
 
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedIcon Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: GestureDetector(
           onTap: () {
             if (_isPlay == false) {
               _controller.forward(); //Next Icon
               _isPlay = true;
             } else {
               _controller.reverse(); //Previous Icon
               _isPlay = false;
             }
           },
           child: AnimatedIcon(
             icon: AnimatedIcons.play_pause,
             progress: _controller,
             size: 100,
           ),
         ),
       ),
     );
   }
 }

''';
