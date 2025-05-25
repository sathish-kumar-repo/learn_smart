import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets21_AppBar.dart';

class FlutterAppBarFlutterAllWidgets extends StatefulWidget {
  const FlutterAppBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAppBarFlutterAllWidgets> createState() =>
      _FlutterAppBarFlutterAllWidgetsState();
}

class _FlutterAppBarFlutterAllWidgetsState
    extends State<FlutterAppBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AppBar Widget'),
          const H3('Click to View Live'),
          const Live(page: AppBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AppBarWidget extends StatefulWidget {
   const AppBarWidget({super.key});
 
   @override
   State<AppBarWidget> createState() => _AppBarWidgetState();
 }
 
 class _AppBarWidgetState extends State<AppBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AppBar Widget"),
         centerTitle: true,
         actions: [
           IconButton(
             onPressed: () {},
             icon: const Icon(
               Icons.notifications,
             ),
           ),
         ],
         backgroundColor: Colors.pinkAccent,
         leading: IconButton(
           onPressed: () {},
           icon: IconButton(
             onPressed: () {},
             icon: const Icon(Icons.menu),
           ),
         ),
         shape: const RoundedRectangleBorder(
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(25),
             bottomRight: Radius.circular(25),
           ),
         ),
         elevation: 10,
       ),
       body: const Center(
         child: Text(
           'Body',
           style: TextStyle(
             fontSize: 24,
           ),
         ),
       ),
     );
   }
 }

''';
