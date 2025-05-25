import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets28_BottomNavigationBar.dart';

class FlutterBottomNavigationBarFlutterAllWidgets extends StatefulWidget {
  const FlutterBottomNavigationBarFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterBottomNavigationBarFlutterAllWidgets> createState() =>
      _FlutterBottomNavigationBarFlutterAllWidgetsState();
}

class _FlutterBottomNavigationBarFlutterAllWidgetsState
    extends State<FlutterBottomNavigationBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('BottomNavigationBar Widget'),
          const H3('Click to View Live'),
          const Live(page: BottomNavigationBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class BottomNavigationBarWidget extends StatefulWidget {
   const BottomNavigationBarWidget({super.key});
 
   @override
   State<BottomNavigationBarWidget> createState() =>
       _BottomNavigationBarWidgetState();
 }
 
 class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
   int _currentIndex = 0;
   List<Widget> body = const [
     Icon(Icons.home),
     Icon(Icons.menu),
     Icon(Icons.person),
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("BottomNavigationBar Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: body[_currentIndex],
       ),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: (int newIndex) {
           setState(() {
             _currentIndex = newIndex;
           });
         },
         items: const [
           BottomNavigationBarItem(
             label: 'Home',
             icon: Icon(Icons.home),
           ),
           BottomNavigationBarItem(
             label: 'Menu',
             icon: Icon(Icons.menu),
           ),
           BottomNavigationBarItem(
             label: 'Profile',
             icon: Icon(Icons.person),
           )
         ],
       ),
     );
   }
 }

''';
