import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets206_ValueListenableBuilder.dart';

class FlutterValueListenableBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterValueListenableBuilderFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterValueListenableBuilderFlutterAllWidgets> createState() =>
      _FlutterValueListenableBuilderFlutterAllWidgetsState();
}

class _FlutterValueListenableBuilderFlutterAllWidgetsState
    extends State<FlutterValueListenableBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 206,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ValueListenableBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: ValueListenableBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ValueListenableBuilderWidget extends StatefulWidget {
   const ValueListenableBuilderWidget({super.key});
 
   @override
   State<ValueListenableBuilderWidget> createState() =>
       _ValueListenableBuilderWidgetState();
 }
 
 final ValueNotifier<int> number = ValueNotifier(0);
 
 class _ValueListenableBuilderWidgetState
     extends State<ValueListenableBuilderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ValueListenableBuilder Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             IconButton(
               onPressed: () {
                 number.value += 1;
               },
               icon: const Icon(Icons.add),
             ),
             const SizedBox(height: 30),
             ValueListenableBuilder(
               valueListenable: number,
               builder: (BuildContext context, int value, Widget? child) {
                 return Text(
                   '\$value',
                   style: const TextStyle(fontSize: 30),
                 );
               },
             )
           ],
         ),
       ),
     );
   }
 }

''';
