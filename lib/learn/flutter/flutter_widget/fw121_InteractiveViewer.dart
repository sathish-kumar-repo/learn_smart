import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets121_InteractiveViewer.dart';

class FlutterInteractiveViewerFlutterAllWidgets extends StatefulWidget {
  const FlutterInteractiveViewerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterInteractiveViewerFlutterAllWidgets> createState() =>
      _FlutterInteractiveViewerFlutterAllWidgetsState();
}

class _FlutterInteractiveViewerFlutterAllWidgetsState
    extends State<FlutterInteractiveViewerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 121,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('InteractiveViewer Widget'),
          const H3('Click to View Live'),
          const Live(page: InteractiveViewerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class InteractiveViewerWidget extends StatefulWidget {
   const InteractiveViewerWidget({super.key});
 
   @override
   State<InteractiveViewerWidget> createState() =>
       _InteractiveViewerWidgetState();
 }
 
 class _InteractiveViewerWidgetState extends State<InteractiveViewerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("InteractiveViewer Widget"),
         centerTitle: true,
       ),
       body: InteractiveViewer(
         boundaryMargin: const EdgeInsets.all(double.infinity),
         child: Scaffold(
           appBar: AppBar(
             title: const Text("Learn Smart"),
           ), // any widget
         ),
       ),
     );
   }
 }

''';
