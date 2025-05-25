import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets49_CupertinoActionSheetAction.dart';

class FlutterCupertinoActionSheetActionFlutterAllWidgets
    extends StatefulWidget {
  const FlutterCupertinoActionSheetActionFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoActionSheetActionFlutterAllWidgets> createState() =>
      _FlutterCupertinoActionSheetActionFlutterAllWidgetsState();
}

class _FlutterCupertinoActionSheetActionFlutterAllWidgetsState
    extends State<FlutterCupertinoActionSheetActionFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 49,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoActionSheetAction Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoActionSheetActionWidget()),
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
 
 class CupertinoActionSheetActionWidget extends StatefulWidget {
   const CupertinoActionSheetActionWidget({super.key});
 
   @override
   State<CupertinoActionSheetActionWidget> createState() =>
       _CupertinoActionSheetActionWidgetState();
 }
 
 class _CupertinoActionSheetActionWidgetState
     extends State<CupertinoActionSheetActionWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoActionSheetAction Widget"),
         centerTitle: true,
       ),
       body: CupertinoPageScaffold(
         child: Center(
           child: CupertinoButton(
             onPressed: () {
               showCupertinoModalPopup(
                 con  context,
                 builder: (context) => CupertinoActionSheet(
                   title: const Text('Learn Smart'),
                   message: const Text('Your message'),
                   cancelButton: TextButton(
                     child: const Text('Cancel'),
                     onPressed: () {
                       Navigator.pop(context);
                     },
                   ),
                   actions: <CupertinoActionSheetAction>[
                     CupertinoActionSheetAction(
                       child: const Text('Do Something'),
                       onPressed: () {
                         Navigator.pop(context);
                       },
                     ),
                     CupertinoActionSheetAction(
                       child: const Text('Do Something else'),
                       onPressed: () {
                         Navigator.pop(context);
                       },
                     ),
                   ],
                 ),
               );
             },
             child: const Text('CupertinoActionSheet'),
           ),
         ),
       ),
     );
   }
 }

''';
