import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets205_TweenAnimationBuilder.dart';

class FlutterTweenAnimationBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterTweenAnimationBuilderFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterTweenAnimationBuilderFlutterAllWidgets> createState() =>
      _FlutterTweenAnimationBuilderFlutterAllWidgetsState();
}

class _FlutterTweenAnimationBuilderFlutterAllWidgetsState
    extends State<FlutterTweenAnimationBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 205,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TweenAnimationBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: TweenAnimationBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TweenAnimationBuilderWidget extends StatefulWidget {
   const TweenAnimationBuilderWidget({super.key});
 
   @override
   State<TweenAnimationBuilderWidget> createState() =>
       _TweenAnimationBuilderWidgetState();
 }
 
 class _TweenAnimationBuilderWidgetState
     extends State<TweenAnimationBuilderWidget> {
   double targetValue = 100;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TweenAnimationBuilder Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: TweenAnimationBuilder(
           tween: Tween<double>(begin: 0, end: targetValue),
           duration: const Duration(milliseconds: 500),
           builder: (BuildContext context, double size, Widget? child) {
             return IconButton(
               iconSize: size,
               color: Colors.orangeAccent,
               icon: const Icon(Icons.flutter_dash),
               onPressed: () {
                 setState(() {
                   targetValue = targetValue == 100 ? 250 : 100;
                 });
               },
             );
           },
         ),
       ),
     );
   }
 }

''';
