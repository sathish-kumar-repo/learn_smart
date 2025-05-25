import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets06_AnimatedAlign.dart';

class FlutterAnimatedAlignFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedAlignFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedAlignFlutterAllWidgets> createState() =>
      _FlutterAnimatedAlignFlutterAllWidgetsState();
}

class _FlutterAnimatedAlignFlutterAllWidgetsState
    extends State<FlutterAnimatedAlignFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedAlign Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedAlignWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedAlignWidget extends StatefulWidget {
   const AnimatedAlignWidget({super.key});
 
   @override
   State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
 }
 
 class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
   bool selected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedAlign Widget"),
         centerTitle: true,
       ),
       body: GestureDetector(
         onTap: () {
           setState(() {
             selected = !selected;
           });
         },
         child: Center(
           child: Container(
             width: double.infinity,
              .0,
             color: Colors.blueGrey,
             child: AnimatedAlign(
               alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
               duration: const Duration(seconds: 1),
               curve: Curves.fastOutSlowIn,
               child: const FlutterLogo(size: 50.0),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
