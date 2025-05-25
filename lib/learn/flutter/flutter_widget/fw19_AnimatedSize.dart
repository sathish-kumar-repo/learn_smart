import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets19_AnimatedSize.dart';

class FlutterAnimatedSizeFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedSizeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedSizeFlutterAllWidgets> createState() =>
      _FlutterAnimatedSizeFlutterAllWidgetsState();
}

class _FlutterAnimatedSizeFlutterAllWidgetsState
    extends State<FlutterAnimatedSizeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedSize Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedSizeWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedSizeWidget extends StatefulWidget {
   const AnimatedSizeWidget({super.key});
 
   @override
   State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
 }
 
 class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
   double _size = 300;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedSize Widget"),
         centerTitle: true,
       ),
       body: GestureDetector(
         onTap: () {
           setState(() {
             _size = _size == 300 ? 100 : 300;
           });
         },
         child: Container(
           color: Colors.black,
           child: AnimatedSize(
             curve: Curves.easeIn,
             duration: const Duration(seconds: 1),
             child: FlutterLogo(
               size: _size,
             ),
           ),
         ),
       ),
     );
   }
 }

''';
