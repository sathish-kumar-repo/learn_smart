import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets176_SlideTransition.dart';

class FlutterSlideTransitionFlutterAllWidgets extends StatefulWidget {
  const FlutterSlideTransitionFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSlideTransitionFlutterAllWidgets> createState() =>
      _FlutterSlideTransitionFlutterAllWidgetsState();
}

class _FlutterSlideTransitionFlutterAllWidgetsState
    extends State<FlutterSlideTransitionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 176,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SlideTransition Widget'),
          const H3('Click to View Live'),
          const Live(page: SlideTransitionWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SlideTransitionWidget extends StatefulWidget {
   const SlideTransitionWidget({super.key});
 
   @override
   State<SlideTransitionWidget> createState() => _SlideTransitionWidgetState();
 }
 
 class _SlideTransitionWidgetState extends State<SlideTransitionWidget>
     with SingleTickerProviderStateMixin {
   late final AnimationController _controller = AnimationController(
     duration: const Duration(seconds: 2),
     vsync: this,
   )..repeat(reverse: true);
 
   late final Animation<Offset> _offsetAnimation = Tween<Offset>(
     begin: Offset.zero,
     end: const Offset(0, 1.5),
   ).animate(
     CurvedAnimation(
       parent: _controller,
       curve: Curves.elasticIn,
     ),
   );
 
   @override
   void dispose() {
     _controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SlideTransition Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SlideTransition(
           position: _offsetAnimation,
           child: const Padding(
             padding: EdgeInsets.all(8.0),
             child: FlutterLogo(size: 150.0),
           ),
         ),
       ),
     );
   }
 }

''';
