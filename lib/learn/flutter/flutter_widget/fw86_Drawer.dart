import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets86_Drawer.dart';

class FlutterDrawerFlutterAllWidgets extends StatefulWidget {
  const FlutterDrawerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDrawerFlutterAllWidgets> createState() =>
      _FlutterDrawerFlutterAllWidgetsState();
}

class _FlutterDrawerFlutterAllWidgetsState
    extends State<FlutterDrawerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 86,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Drawer Widget'),
          const H3('Click to View Live'),
          const Live(page: DrawerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DrawerWidget extends StatefulWidget {
   const DrawerWidget({super.key});
 
   @override
   State<DrawerWidget> createState() => _DrawerWidgetState();
 }
 
 class _DrawerWidgetState extends State<DrawerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Drawer Widget"),
         centerTitle: true,
       ),
       drawer: Drawer(
         child: ListView(
           children: [
             ListTile(
               title: const Text("Item 1"),
               onTap: () {},
             ),
             ListTile(
               title: const Text("Item 1"),
               onTap: () {},
             )
           ],
         ),
       ),
       endDrawer: Drawer(
         child: ListView(
           children: [
             ListTile(
               title: const Text("Item 1"),
               onTap: () {},
             ),
             ListTile(
               title: const Text("Item 1"),
               onTap: () {},
             )
           ],
         ),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Builder(
               builder: (context) => ElevatedButton(
                 onPressed: () {
                   Scaffold.of(context).openDrawer();
                 },
                 child: const Text('open Drawer'),
               ),
             ),
             Builder(
               builder: (context) => ElevatedButton(
                 onPressed: () {
                   Scaffold.of(context).openEndDrawer();
                 },
                 child: const Text('open End Drawer'),
               ),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
