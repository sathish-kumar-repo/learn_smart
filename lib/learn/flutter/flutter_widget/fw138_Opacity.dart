import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets138_Opacity.dart';

class FlutterOpacityFlutterAllWidgets extends StatefulWidget {
  const FlutterOpacityFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterOpacityFlutterAllWidgets> createState() =>
      _FlutterOpacityFlutterAllWidgetsState();
}

class _FlutterOpacityFlutterAllWidgetsState
    extends State<FlutterOpacityFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 138,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Opacity Widget'),
          const H3('Click to View Live'),
          const Live(page: OpacityWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class OpacityWidget extends StatefulWidget {
   const OpacityWidget({super.key});
 
   @override
   State<OpacityWidget> createState() => _OpacityWidgetState();
 }
 
 class _OpacityWidgetState extends State<OpacityWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Opacity Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Opacity(
             opacity: 1,
             child: Container(
               width: double.infinity,
               height: 100,
               color: Colors.orangeAccent,
               alignment: Alignment.center,
               child: const Text('Learn Smart'),
             ),
           ),
           Opacity(
             opacity: 0.5,
             child: Container(
               width: double.infinity,
               height: 100,
               color: Colors.orangeAccent,
               alignment: Alignment.center,
               child: const Text('Learn Smart'),
             ),
           ),
           Opacity(
             opacity: 0.1,
             child: Container(
               width: double.infinity,
               height: 100,
               color: Colors.orangeAccent,
               alignment: Alignment.center,
               child: const Text('Learn Smart'),
             ),
           ),
         ],
       ),
     );
   }
 }

''';
