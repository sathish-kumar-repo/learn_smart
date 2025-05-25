import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets20_AnimatedSwitcher.dart';

class FlutterAnimatedSwitcherFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedSwitcherFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedSwitcherFlutterAllWidgets> createState() =>
      _FlutterAnimatedSwitcherFlutterAllWidgetsState();
}

class _FlutterAnimatedSwitcherFlutterAllWidgetsState
    extends State<FlutterAnimatedSwitcherFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 20,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedSwitcher Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedSwitcherWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedSwitcherWidget extends StatefulWidget {
   const AnimatedSwitcherWidget({super.key});
 
   @override
   State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
 }
 
 class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
   int _count = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedSwitcher Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             AnimatedSwitcher(
               duration: const Duration(milliseconds: 500),
               child: Text(
                 '\$_count',
                 key: ValueKey(_count),
                 style: const TextStyle(
                   fontSize: 40,
                 ),
               ),
               transitionBuilder: (Widget child, Animation<double> animation) {
                 return ScaleTransition(scale: animation, child: child);
               },
             ),
             ElevatedButton(
               onPressed: () {
                 setState(() {
                   _count += 1;
                 });
               },
               child: const Text('Add'),
             )
           ],
         ),
       ),
     );
   }
 }

''';
