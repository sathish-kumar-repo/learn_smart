import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets98_FadeTransition.dart';

class FlutterFadeTransitionFlutterAllWidgets extends StatefulWidget {
  const FlutterFadeTransitionFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFadeTransitionFlutterAllWidgets> createState() =>
      _FlutterFadeTransitionFlutterAllWidgetsState();
}

class _FlutterFadeTransitionFlutterAllWidgetsState
    extends State<FlutterFadeTransitionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 98,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FadeTransition Widget'),
          const H3('Click to View Live'),
          const Live(page: FadeTransitionWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FadeTransitionWidget extends StatefulWidget {
   const FadeTransitionWidget({super.key});
 
   @override
   State<FadeTransitionWidget> createState() => _FadeTransitionWidgetState();
 }
 
 class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
     with TickerProviderStateMixin {
   late final AnimationController _controller = AnimationController(
     duration: const Duration(seconds: 2),
     vsync: this,
   )..repeat(reverse: true);
 
   late final Animation<double> _animation =
       CurvedAnimation(parent: _controller, curve: Curves.easeIn);
   //Cubic(0.42, 0.00, 1.00, 1.00)
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
 
   @override
   void initState() {
     print(_animation);
     super.initState();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FadeTransition Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: FadeTransition(
           opacity: _animation,
           child: const FlutterLogo(size: 300),
         ),
       ),
     );
   }
 }

''';
