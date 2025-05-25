import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets16_AnimatedPhysicalModel.dart';

class FlutterAnimatedPhysicalModelFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedPhysicalModelFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterAnimatedPhysicalModelFlutterAllWidgets> createState() =>
      _FlutterAnimatedPhysicalModelFlutterAllWidgetsState();
}

class _FlutterAnimatedPhysicalModelFlutterAllWidgetsState
    extends State<FlutterAnimatedPhysicalModelFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedPhysicalModel Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedPhysicalModelWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedPhysicalModelWidget extends StatefulWidget {
   const AnimatedPhysicalModelWidget({super.key});
 
   @override
   State<AnimatedPhysicalModelWidget> createState() =>
       _AnimatedPhysicalModelWidgetState();
 }
 
 class _AnimatedPhysicalModelWidgetState
     extends State<AnimatedPhysicalModelWidget> {
   bool _isFlat = true;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedPhysicalModel Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             AnimatedPhysicalModel(
               shape: BoxShape.rectangle,
               elevation: _isFlat ? 0 : 6.0,
               color: Colors.white,
               shadowColor: Colors.black,
               duration: const Duration(milliseconds: 500),
               curve: Curves.fastOutSlowIn,
               child: const SizedBox(
                 height: 120.0,
                 width: 120.0,
                 child: Icon(Icons.android_outlined),
               ),
             ),
             const SizedBox(height: 20),
             ElevatedButton(
               onPressed: () {
                 setState(() {
                   _isFlat = !_isFlat;
                 });
               },
               child: const Text('Click'),
             )
           ],
         ),
       ),
     );
   }
 }

''';
