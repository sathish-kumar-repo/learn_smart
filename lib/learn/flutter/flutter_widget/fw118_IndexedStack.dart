import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets118_IndexedStack.dart';

class FlutterIndexedStackFlutterAllWidgets extends StatefulWidget {
  const FlutterIndexedStackFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterIndexedStackFlutterAllWidgets> createState() =>
      _FlutterIndexedStackFlutterAllWidgetsState();
}

class _FlutterIndexedStackFlutterAllWidgetsState
    extends State<FlutterIndexedStackFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 118,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IndexedStack Widget'),
          const H3('Click to View Live'),
          const Live(page: IndexedStackWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class IndexedStackWidget extends StatefulWidget {
   const IndexedStackWidget({super.key});
 
   @override
   State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
 }
 
 class _IndexedStackWidgetState extends State<IndexedStackWidget> {
   int index = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("IndexedStack Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(
                   onPressed: () {
                     setState(() {
                       index = 0;
                     });
                   },
                   child: const Text('0'),
                 ),
                 ElevatedButton(
                   onPressed: () {
                     setState(() {
                       index = 1;
                     });
                   },
                   child: const Text('1'),
                 ),
                 ElevatedButton(
                   onPressed: () {
                     setState(() {
                       index = 2;
                     });
                   },
                   child: const Text('2'),
                 ),
                 IndexedStack(
                   index: index,
                   children: [
                     Center(
                       child: Image.asset('assets/images/1.jpg'),
                     ),
                     Center(
                       child: Image.asset('assets/images/2.jpg'),
                     ),
                     Center(
                       child: Image.asset('assets/images/3.jpg'),
                     ),
                   ],
                 )
               ],
             ),
           ],
         ),
       ),
     );
   }
 }

''';
