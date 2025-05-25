import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets165_ScaleTransition.dart';

class FlutterScaleTransitionFlutterAllWidgets extends StatefulWidget {
  const FlutterScaleTransitionFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterScaleTransitionFlutterAllWidgets> createState() =>
      _FlutterScaleTransitionFlutterAllWidgetsState();
}

class _FlutterScaleTransitionFlutterAllWidgetsState
    extends State<FlutterScaleTransitionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 165,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ScaleTransition Widget'),
          const H3('Click to View Live'),
          const Live(page: ScaleTransitionWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ScaleTransitionWidget extends StatefulWidget {
   const ScaleTransitionWidget({super.key});
 
   @override
   State<ScaleTransitionWidget> createState() => _ScaleTransitionWidgetState();
 }
 
 class _ScaleTransitionWidgetState extends State<ScaleTransitionWidget>
     with TickerProviderStateMixin {
   late final AnimationController _controller = AnimationController(
     duration: const Duration(seconds: 1),
     vsync: this,
   )..repeat(reverse: true);
 
   late final Animation<double> _animation = CurvedAnimation(
     parent: _controller,
     curve: Curves.fastOutSlowIn,
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
         title: const Text("ScaleTransition Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ScaleTransition(
           scale: _animation,
           child: const FlutterLogo(size: 150.0),
         ),
       ),
     );
   }
 }

''';
