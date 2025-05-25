import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets08_AnimatedContainer.dart';

class FlutterAnimatedContainerFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedContainerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedContainerFlutterAllWidgets> createState() =>
      _FlutterAnimatedContainerFlutterAllWidgetsState();
}

class _FlutterAnimatedContainerFlutterAllWidgetsState
    extends State<FlutterAnimatedContainerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedContainer Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedContainerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedContainerWidget extends StatefulWidget {
   const AnimatedContainerWidget({super.key});
 
   @override
   State<AnimatedContainerWidget> createState() =>
       _AnimatedContainerWidgetState();
 }
 
 class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
   bool selected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedContainer Widget"),
         centerTitle: true,
       ),
       body: GestureDetector(
         onTap: () {
           setState(() {
             selected = !selected;
           });
         },
         child: Center(
           child: AnimatedContainer(
             width: selected ? 200.0 : 100.0,
             height: selected ? 100.0 : 200.0,
             color: selected ? Colors.blueGrey : Colors.black,
             alignment: selected ? Alignment.center : Alignment.topCenter,
             duration: const Duration(seconds: 2),
             curve: Curves.fastOutSlowIn,
             child: const FlutterLogo(size: 75),
           ),
         ),
       ),
     );
   }
 }

''';
