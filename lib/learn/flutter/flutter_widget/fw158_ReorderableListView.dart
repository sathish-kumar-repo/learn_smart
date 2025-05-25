import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets158_ReorderableListView.dart';

class FlutterReorderableListViewFlutterAllWidgets extends StatefulWidget {
  const FlutterReorderableListViewFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterReorderableListViewFlutterAllWidgets> createState() =>
      _FlutterReorderableListViewFlutterAllWidgetsState();
}

class _FlutterReorderableListViewFlutterAllWidgetsState
    extends State<FlutterReorderableListViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 158,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ReorderableListView Widget'),
          const H3('Click to View Live'),
          const Live(page: ReorderableListViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ReorderableListViewWidget extends StatefulWidget {
   const ReorderableListViewWidget({super.key});
 
   @override
   State<ReorderableListViewWidget> createState() =>
       _ReorderableListViewWidgetState();
 }
 
 class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
   final List<int> items = List<int>.generate(30, (int index) => index);
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ReorderableListView Widget"),
         centerTitle: true,
       ),
       body: ReorderableListView(
         children: List.generate(
           items.length,
           (index) => ListTile(
             key: Key('\$index'),
             tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
             title: Text('Item \${items[index]}'),
             trailing: const Icon(Icons.drag_handle_sharp),
           ),
         ),
         onReorder: (int oldIndex, int newIndex) {
           setState(() {
             if (oldIndex < newIndex) {
               // print(newIndex);
               newIndex -= 1;
             }
             final int item = items.removeAt(oldIndex);
             // print(item);
             items.insert(newIndex, item);
           });
         },
       ),
     );
   }
 }

''';
