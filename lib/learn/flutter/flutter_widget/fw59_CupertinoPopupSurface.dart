import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets59_CupertinoPopupSurface.dart';

class FlutterCupertinoPopupSurfaceFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoPopupSurfaceFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoPopupSurfaceFlutterAllWidgets> createState() =>
      _FlutterCupertinoPopupSurfaceFlutterAllWidgetsState();
}

class _FlutterCupertinoPopupSurfaceFlutterAllWidgetsState
    extends State<FlutterCupertinoPopupSurfaceFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 59,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoPopupSurface Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoPopupSurfaceWidget()),
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
 
 class CupertinoPopupSurfaceWidget extends StatefulWidget {
   const CupertinoPopupSurfaceWidget({super.key});
 
   @override
   State<CupertinoPopupSurfaceWidget> createState() =>
       _CupertinoPopupSurfaceWidgetState();
 }
 
 class _CupertinoPopupSurfaceWidgetState
     extends State<CupertinoPopupSurfaceWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoPopupSurface Widget"),
         centerTitle: true,
       ),
       body: CupertinoPageScaffold(
         child: Center(
           child: CupertinoButton(
             child: const Text("Click Me"),
             onPressed: () {
               showCupertinoModalPopup(
                 con  context,
                 builder: (BuildContext context) {
                   return CupertinoPopupSurface(
                     child: Container(
                       color: CupertinoColors.white,
                       alignment: Alignment.center,
                       width: double.infinity,
                       height: 400,
                       child: CupertinoButton(
                         child: const Text('Close'),
                         onPressed: () {
                           Navigator.of(context).pop();
                         },
                       ),
                     ),
                   );
                 },
               );
             },
           ),
         ),
       ),
     );
   }
 }

''';
