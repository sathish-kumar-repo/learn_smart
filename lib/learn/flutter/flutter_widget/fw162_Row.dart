import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets162_Row.dart';

class FlutterRowFlutterAllWidgets extends StatefulWidget {
  const FlutterRowFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRowFlutterAllWidgets> createState() =>
      _FlutterRowFlutterAllWidgetsState();
}

class _FlutterRowFlutterAllWidgetsState
    extends State<FlutterRowFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 162,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Row Widget'),
          const H3('Click to View Live'),
          const Live(page: RowWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RowWidget extends StatefulWidget {
   const RowWidget({super.key});
 
   @override
   State<RowWidget> createState() => _RowWidgetState();
 }
 
 class _RowWidgetState extends State<RowWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("Row Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         height: double.infinity,
         width: double.infinity,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               children: [
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 )
               ],
             ),
             const SizedBox(height: 10),
             Row(
               children: [
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 ),
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 ),
               ],
             ),
             const SizedBox(height: 10),
             Row(
               children: [
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 ),
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 ),
                 Expanded(
                   child: ElevatedButton(
                     onPressed: () {},
                     child: const Text('Click'),
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }

''';
