import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets52_CupertinoAlertDialog.dart';

class FlutterCupertinoAlertDialogFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoAlertDialogFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoAlertDialogFlutterAllWidgets> createState() =>
      _FlutterCupertinoAlertDialogFlutterAllWidgetsState();
}

class _FlutterCupertinoAlertDialogFlutterAllWidgetsState
    extends State<FlutterCupertinoAlertDialogFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 52,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoAlertDialog Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoAlertDialogWidget()),
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
 
 class CupertinoAlertDialogWidget extends StatefulWidget {
   const CupertinoAlertDialogWidget({super.key});
 
   @override
   State<CupertinoAlertDialogWidget> createState() =>
       _CupertinoAlertDialogWidgetState();
 }
 
 class _CupertinoAlertDialogWidgetState
     extends State<CupertinoAlertDialogWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoAlertDialog Widget"),
         centerTitle: true,
       ),
       body: CupertinoPageScaffold(
         child: Center(
           child: CupertinoButton(
             onPressed: () {
               showCupertinoDialog<void>(
                 con  context,
                 builder: (BuildContext context) => CupertinoAlertDialog(
                   title: const Text('Alert'),
                   content: const Text('Learn more be smart'),
                   actions: <CupertinoDialogAction>[
                     CupertinoDialogAction(
                       onPressed: () {
                         Navigator.pop(context);
                       },
                       isDestructiveAction: true,
                       child: const Text('No'),
                     ),
                     CupertinoDialogAction(
                       onPressed: () {
                         Navigator.pop(context);
                       },
                       child: const Text('Yes'),
                     )
                   ],
                 ),
               );
             },
             child: const Text('CupertinoAlertDialog'),
           ),
         ),
       ),
     );
   }
 }

''';
