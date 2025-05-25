import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets194_TabBar.dart';

class FlutterTabBarFlutterAllWidgets extends StatefulWidget {
  const FlutterTabBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTabBarFlutterAllWidgets> createState() =>
      _FlutterTabBarFlutterAllWidgetsState();
}

class _FlutterTabBarFlutterAllWidgetsState
    extends State<FlutterTabBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 194,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TabBar Widget'),
          const H3('Click to View Live'),
          const Live(page: TabBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TabBarWidget extends StatefulWidget {
   const TabBarWidget({super.key});
 
   @override
   State<TabBarWidget> createState() => _TabBarWidgetState();
 }
 
 class _TabBarWidgetState extends State<TabBarWidget> {
   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
       length: 3,
       child: Scaffold(
         appBar: AppBar(
           bottom: const TabBar(
             tabs: [
               Tab(
                 icon: Icon(Icons.home),
               ),
               Tab(
                 icon: Icon(Icons.settings),
               ),
               Tab(
                 icon: Icon(Icons.person),
               ),
             ],
           ),
         ),
         body: TabBarView(
           children: [
             Container(
               color: Colors.orangeAccent,
               child: const Icon(Icons.home),
             ),
             Container(
               color: Colors.redAccent,
               child: const Icon(Icons.settings),
             ),
             Container(
               color: Colors.blueGrey,
               child: const Icon(Icons.person),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
