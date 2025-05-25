import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets126_ListTile.dart';

class FlutterListTileFlutterAllWidgets extends StatefulWidget {
  const FlutterListTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterListTileFlutterAllWidgets> createState() =>
      _FlutterListTileFlutterAllWidgetsState();
}

class _FlutterListTileFlutterAllWidgetsState
    extends State<FlutterListTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 126,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ListTile Widget'),
          const H3('Click to View Live'),
          const Live(page: ListTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ListTileWidget extends StatefulWidget {
   const ListTileWidget({super.key});
 
   @override
   State<ListTileWidget> createState() => _ListTileWidgetState();
 }
 
 class _ListTileWidgetState extends State<ListTileWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ListTile Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ListTile(
           title: const Text('Learn Smart'),
           tileColor: Colors.pinkAccent,
           onTap: () {},
           leading: const Icon(Icons.person),
           trailing: const Icon(Icons.menu),
         ),
       ),
     );
   }
 }

''';
