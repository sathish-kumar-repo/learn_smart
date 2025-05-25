import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets212_ListView.dart';

class FlutterListViewFlutterAllWidgets extends StatefulWidget {
  const FlutterListViewFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterListViewFlutterAllWidgets> createState() =>
      _FlutterListViewFlutterAllWidgetsState();
}

class _FlutterListViewFlutterAllWidgetsState
    extends State<FlutterListViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 212,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ListView Widget'),
          const H3('Click to View Live'),
          const Live(page: ListViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ListViewWidget extends StatefulWidget {
   const ListViewWidget({super.key});
 
   @override
   State<ListViewWidget> createState() => _ListViewWidgetState();
 }
 
 class _ListViewWidgetState extends State<ListViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ListView Widget"),
         centerTitle: true,
       ),
       body: ListView.separated(
         itemBuilder: (BuildContext context, int index) {
           return ListTile(
             title: const Text('Learn Smart'),
             tileColor: Colors.pinkAccent,
             onTap: () {},
             leading: const Icon(Icons.person),
             trailing: const Icon(Icons.menu),
           );
         },
         separatorBuilder: (BuildContext context, int index) => const Divider(
           color: Colors.black,
         ),
         itemCount: 5,
       ),
     );
   }
 }

''';
