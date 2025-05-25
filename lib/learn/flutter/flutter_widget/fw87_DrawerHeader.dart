import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets87_DrawerHeader.dart';

class FlutterDrawerHeaderFlutterAllWidgets extends StatefulWidget {
  const FlutterDrawerHeaderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDrawerHeaderFlutterAllWidgets> createState() =>
      _FlutterDrawerHeaderFlutterAllWidgetsState();
}

class _FlutterDrawerHeaderFlutterAllWidgetsState
    extends State<FlutterDrawerHeaderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 87,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DrawerHeader Widget'),
          const H3('Click to View Live'),
          const Live(page: DrawerHeaderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DrawerHeaderWidget extends StatefulWidget {
   const DrawerHeaderWidget({super.key});
 
   @override
   State<DrawerHeaderWidget> createState() => _DrawerHeaderWidgetState();
 }
 
 class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DrawerHeader Widget"),
         centerTitle: true,
       ),
       drawer: Drawer(
         child: ListView(
           children: [
             const DrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.blue,
               ),
               child: Text('Drawer Header'),
             ),
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
       //body:
     );
   }
 }

''';
