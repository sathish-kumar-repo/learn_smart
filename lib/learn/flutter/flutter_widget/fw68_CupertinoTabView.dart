import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets68_CupertinoTabView.dart';

class FlutterCupertinoTabViewFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoTabViewFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoTabViewFlutterAllWidgets> createState() =>
      _FlutterCupertinoTabViewFlutterAllWidgetsState();
}

class _FlutterCupertinoTabViewFlutterAllWidgetsState
    extends State<FlutterCupertinoTabViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 68,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoTabView Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoTabViewWidget()),
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
 
 class CupertinoTabViewWidget extends StatefulWidget {
   const CupertinoTabViewWidget({super.key});
 
   @override
   State<CupertinoTabViewWidget> createState() => _CupertinoTabViewWidgetState();
 }
 
 class _CupertinoTabViewWidgetState extends State<CupertinoTabViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoTabView Widget"),
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
