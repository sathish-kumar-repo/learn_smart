import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets12_AnimatedList.dart';

class FlutterAnimatedListFlutterAllWidgets extends StatefulWidget {
  const FlutterAnimatedListFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAnimatedListFlutterAllWidgets> createState() =>
      _FlutterAnimatedListFlutterAllWidgetsState();
}

class _FlutterAnimatedListFlutterAllWidgetsState
    extends State<FlutterAnimatedListFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AnimatedList Widget'),
          const H3('Click to View Live'),
          const Live(page: AnimatedListWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AnimatedListWidget extends StatefulWidget {
   const AnimatedListWidget({super.key});
 
   @override
   State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
 }
 
 class _AnimatedListWidgetState extends State<AnimatedListWidget> {
   final _items = [];
   final GlobalKey<AnimatedListState> _key = GlobalKey();
 
   void _addItem() {
     _items.insert(0, "Items \${_items.length + 1}");
     _key.currentState!.insertItem(
       0,
       duration: const Duration(seconds: 1),
     );
   }
 
   void _removeItem(int index) {
     _key.currentState!.removeItem(
       index,
       (_, animation) {
         return SizeTransition(
           sizeFactor: animation,
           child: const Card(
             margin: EdgeInsets.all(10),
             color: Colors.red,
             child: ListTile(
               title: Text(
                 'Deleted',
                 style: TextStyle(
                   fontSize: 24,
                 ),
               ),
             ),
           ),
         );
       },
       duration: const Duration(milliseconds: 300),
     );
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AnimatedList Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           const SizedBox(height: 10),
           IconButton(
             onPressed: _addItem,
             icon: const Icon(Icons.add),
           ),
           Expanded(
             child: AnimatedList(
                 key: _key,
                 initialItemCount: 0,
                 padding: const EdgeInsets.all(10.0),
                 itemBuilder: (context, index, animation) {
                   return SizeTransition(
                     key: UniqueKey(),
                     sizeFactor: animation,
                     child: Card(
                       margin: const EdgeInsets.all(10.0),
                       color: Colors.orangeAccent,
                       child: ListTile(
                         title: Text(
                           _items[index],
                           style: const TextStyle(
                             fontSize: 24,
                           ),
                         ),
                         trailing: IconButton(
                           icon: const Icon(Icons.delete),
                           onPressed: () {
                             _removeItem(index);
                           },
                         ),
                       ),
                     ),
                   );
                 }),
           ),
         ],
       ),
     );
   }
 }

''';
