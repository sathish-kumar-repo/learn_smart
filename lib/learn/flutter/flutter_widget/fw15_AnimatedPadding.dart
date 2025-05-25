import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets15_AnimatedPadding.dart';

class FlutterAnimatedPaddingFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedPaddingFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedPaddingFlutterAllWidgets> createState() =>
      _FlutterAnimatedPaddingFlutterAllWidgetsState();
}

class _FlutterAnimatedPaddingFlutterAllWidgetsState
    extends State<FlutterAnimatedPaddingFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedPadding Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedPaddingWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedPaddingWidget extends StatefulWidget {
   const AnimatedPaddingWidget({super.key});
 
   @override
   State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
 }
 
 class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
   double padValue = 0.0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedPadding Widget"),
         centerTitle: true,
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
             onPressed: () {
               setState(() {
                 padValue = padValue == 0.0 ? 100.0 : 0.0;
               });
             },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.orangeAccent,
             ),
             child: const Text('Change Padding'),
           ),
           Text('Padding = \$padValue'),
           AnimatedPadding(
             padding: EdgeInsets.all(padValue),
             duration: const Duration(seconds: 2),
             curve: Curves.easeInOut,
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height / 4,
               color: Colors.orangeAccent,
             ),
           )
         ],
       ),
     );
   }
 }

''';
