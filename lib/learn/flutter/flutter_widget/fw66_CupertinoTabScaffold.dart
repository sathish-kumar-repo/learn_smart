import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets66_CupertinoTabScaffold.dart';

class FlutterCupertinoTabScaffoldFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoTabScaffoldFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoTabScaffoldFlutterAllWidgets> createState() =>
      _FlutterCupertinoTabScaffoldFlutterAllWidgetsState();
}

class _FlutterCupertinoTabScaffoldFlutterAllWidgetsState
    extends State<FlutterCupertinoTabScaffoldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 66,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoTabScaffold Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoTabScaffoldWidget()),
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
 
 class CupertinoTabScaffoldWidget extends StatefulWidget {
   const CupertinoTabScaffoldWidget({super.key});
 
   @override
   State<CupertinoTabScaffoldWidget> createState() =>
       _CupertinoTabScaffoldWidgetState();
 }
 
 class _CupertinoTabScaffoldWidgetState
     extends State<CupertinoTabScaffoldWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoTabScaffold Widget"),
         centerTitle: true,
       ),
       body: CupertinoTabScaffold(
         tabBar: CupertinoTabBar(
           items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(
               icon: Icon(CupertinoIcons.home),
               label: 'Home',
             ),
             BottomNavigationBarItem(
               icon: Icon(CupertinoIcons.settings),
               label: 'Settings',
             ),
           ],
         ),
         tabBuilder: (BuildContext context, int index) {
           return CupertinoTabView(
             builder: (BuildContext context) {
               return Center(
                 child: Icon(
                   index == 0 ? CupertinoIcons.home : CupertinoIcons.settings,
                   size: 80,
                 ),
               );
             },
           );
         },
       ),
     );
   }
 }

''';
