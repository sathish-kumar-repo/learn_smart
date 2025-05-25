import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets161_RotationTransition.dart';

class FlutterRotationTransitionFlutterAllWidgets extends StatefulWidget {
  const FlutterRotationTransitionFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterRotationTransitionFlutterAllWidgets> createState() =>
      _FlutterRotationTransitionFlutterAllWidgetsState();
}

class _FlutterRotationTransitionFlutterAllWidgetsState
    extends State<FlutterRotationTransitionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 161,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RotationTransition Widget'),
          const H3('Click to View Live'),
          const Live(page: RotationTransitionWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RotationTransitionWidget extends StatefulWidget {
   const RotationTransitionWidget({super.key});
 
   @override
   State<RotationTransitionWidget> createState() =>
       _RotationTransitionWidgetState();
 }
 
 class _RotationTransitionWidgetState extends State<RotationTransitionWidget>
     with TickerProviderStateMixin {
   late final AnimationController _controller = AnimationController(
     duration: const Duration(seconds: 1),
     vsync: this,
   )..repeat(reverse: true);
 
   late final Animation<double> _animation = CurvedAnimation(
     parent: _controller,
     curve: Curves.easeInCirc,
   );
 
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("RotationTransition Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: RotationTransition(
           turns: _animation,
           child: const Padding(
             padding: EdgeInsets.all(8.0),
             child: FlutterLogo(size: 150),
           ),
         ),
       ),
     );
   }
 }

''';
