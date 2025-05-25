import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets157_RefreshIndicator.dart';

class FlutterRefreshIndicatorFlutterAllWidgets extends StatefulWidget {
  const FlutterRefreshIndicatorFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRefreshIndicatorFlutterAllWidgets> createState() =>
      _FlutterRefreshIndicatorFlutterAllWidgetsState();
}

class _FlutterRefreshIndicatorFlutterAllWidgetsState
    extends State<FlutterRefreshIndicatorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 157,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RefreshIndicator Widget'),
          const H3('Click to View Live'),
          const Live(page: RefreshIndicatorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RefreshIndicatorWidget extends StatefulWidget {
   const RefreshIndicatorWidget({super.key});
 
   @override
   State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
 }
 
 class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
   List<String> items = <String>[
     'Item 1',
     'Item 2',
   ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black45,
       appBar: AppBar(
         title: const Text("RefreshIndicator Widget"),
         centerTitle: true,
       ),
       body: RefreshIndicator(
         color: Colors.white,
         backgroundColor: Colors.orangeAccent,
         onRefresh: () async {
           await Future.delayed(
             const Duration(seconds: 1),
           );
           int nextItem = items.length + 1;
           items.add('Item \$nextItem');
           setState(() {});
         },
         child: ListView.builder(
           itemCount: items.length,
           itemBuilder: (context, index) => Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListTile(
               title: Text(items[index]),
               tileColor: Colors.white70,
             ),
           ),
           padding: const EdgeInsets.all(5),
         ),
       ),
     );
   }
 }

''';
