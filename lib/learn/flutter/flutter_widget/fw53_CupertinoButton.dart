import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets53_CupertinoButton.dart';

class FlutterCupertinoButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoButtonFlutterAllWidgets> createState() =>
      _FlutterCupertinoButtonFlutterAllWidgetsState();
}

class _FlutterCupertinoButtonFlutterAllWidgetsState
    extends State<FlutterCupertinoButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 53,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoButton Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 
 class CupertinoButtonWidget extends StatefulWidget {
   const CupertinoButtonWidget({super.key});
 
   @override
   State<CupertinoButtonWidget> createState() => _CupertinoButtonWidgetState();
 }
 
 class _CupertinoButtonWidgetState extends State<CupertinoButtonWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             const CupertinoButton(
               onPressed: null,
               child: Text('Disabled'),
             ),
             const SizedBox(height: 30),
             const CupertinoButton.filled(
               onPressed: null,
               child: Text('Disabled'),
             ),
             const SizedBox(height: 30),
             CupertinoButton(
               onPressed: () {},
               child: const Text('Enabled'),
             ),
             const SizedBox(height: 30),
             CupertinoButton.filled(
               onPressed: () {},
               child: const Text('Enabled'),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
