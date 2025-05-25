import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets135_NavigationBar.dart';

class FlutterNavigationBarFlutterAllWidgets extends StatefulWidget {
  const FlutterNavigationBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterNavigationBarFlutterAllWidgets> createState() =>
      _FlutterNavigationBarFlutterAllWidgetsState();
}

class _FlutterNavigationBarFlutterAllWidgetsState
    extends State<FlutterNavigationBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 135,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('NavigationBar Widget'),
          const H3('Click to View Live'),
          const Live(page: NavigationBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class NavigationBarWidget extends StatefulWidget {
   const NavigationBarWidget({super.key});
 
   @override
   State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
 }
 
 class _NavigationBarWidgetState extends State<NavigationBarWidget> {
   int currentIndex = 0;
   static const List body = [
     Icon(Icons.home, size: 50),
     Icon(Icons.search, size: 50),
     Icon(Icons.person, size: 50),
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("NavigationBar Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: body.elementAt(currentIndex),
       ),
       bottomNavigationBar: NavigationBar(
         destinations: const [
           NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
           NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
           NavigationDestination(icon: Icon(Icons.person), label: 'Person'),
         ],
         selectedIndex: currentIndex,
         onDestinationSelected: (int index) {
           setState(() {
             currentIndex = index;
           });
         },
       ),
     );
   }
 }

''';
