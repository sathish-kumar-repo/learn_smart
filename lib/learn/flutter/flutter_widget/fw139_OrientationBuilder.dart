import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets139_OrientationBuilder.dart';

class FlutterOrientationBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterOrientationBuilderFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterOrientationBuilderFlutterAllWidgets> createState() =>
      _FlutterOrientationBuilderFlutterAllWidgetsState();
}

class _FlutterOrientationBuilderFlutterAllWidgetsState
    extends State<FlutterOrientationBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 139,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('OrientationBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: OrientationBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OrientationBuilderWidget extends StatefulWidget {
   const OrientationBuilderWidget({super.key});
 
   @override
   State<OrientationBuilderWidget> createState() =>
       _OrientationBuilderWidgetState();
 }
 
 class _OrientationBuilderWidgetState extends State<OrientationBuilderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("OrientationBuilder Widget"),
         centerTitle: true,
       ),
       body: OrientationBuilder(
         builder: (BuildContext context, Orientation orientation) {
           if (orientation == Orientation.portrait) {
             return const Center(
               child: Text('Portrait'),
             );
           } else {
             return const Center(
               child: Text('Landscape'),
             );
           }
         },
       ),
     );
   }
 }

''';
