import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets54_CupertinoContextMenu.dart';

class FlutterCupertinoContextMenuFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoContextMenuFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoContextMenuFlutterAllWidgets> createState() =>
      _FlutterCupertinoContextMenuFlutterAllWidgetsState();
}

class _FlutterCupertinoContextMenuFlutterAllWidgetsState
    extends State<FlutterCupertinoContextMenuFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 54,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoContextMenu Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoContextMenuWidget()),
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
 
 class CupertinoContextMenuWidget extends StatefulWidget {
   const CupertinoContextMenuWidget({super.key});
 
   @override
   State<CupertinoContextMenuWidget> createState() =>
       _CupertinoContextMenuWidgetState();
 }
 
 class _CupertinoContextMenuWidgetState
     extends State<CupertinoContextMenuWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoContextMenu Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: SizedBox(
           width: 100,
           height: 100,
           child: CupertinoContextMenu(
             actions: <Widget>[
               CupertinoContextMenuAction(
                 child: const Text('Action one'),
                 onPressed: () {
                   Navigator.pop(context);
                 },
               ),
               CupertinoContextMenuAction(
                 child: const Text('Action two'),
                 onPressed: () {
                   Navigator.pop(context);
                 },
               ),
             ],
             child: const FlutterLogo(),
           ),
         ),
       ),
     );
   }
 }

''';
