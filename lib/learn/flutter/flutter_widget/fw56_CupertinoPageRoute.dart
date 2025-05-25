import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets56_CupertinoPageRoute.dart';

class FlutterCupertinoPageRouteFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoPageRouteFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoPageRouteFlutterAllWidgets> createState() =>
      _FlutterCupertinoPageRouteFlutterAllWidgetsState();
}

class _FlutterCupertinoPageRouteFlutterAllWidgetsState
    extends State<FlutterCupertinoPageRouteFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 56,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoPageRoute Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoPageRouteWidget()),
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
 
 class CupertinoPageRouteWidget extends StatefulWidget {
   const CupertinoPageRouteWidget({super.key});
 
   @override
   State<CupertinoPageRouteWidget> createState() =>
       _CupertinoPageRouteWidgetState();
 }
 
 class _CupertinoPageRouteWidgetState extends State<CupertinoPageRouteWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoPageRoute Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: CupertinoButton.filled(
           child: const Text('Click for page 2'),
           onPressed: () => Navigator.of(context).push(
             CupertinoPageRoute(
               builder: (context) {
                 return const PageTwo();
               },
             ),
           ),
         ),
       ),
     );
   }
 }
 
 class PageTwo extends StatelessWidget {
   const PageTwo({super.key});
 
   @override
   Widget build(BuildContext context) {
     return const Scaffold(
       backgroundColor: Colors.blueGrey,
       body: Center(
         child: Text('Page Two'),
       ),
     );
   }
 }

''';
