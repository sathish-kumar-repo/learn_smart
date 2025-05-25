import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets83_DraggableScrollable.dart';

class FlutterDraggableScrollableFlutterAllWidgets extends StatefulWidget {
  const FlutterDraggableScrollableFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterDraggableScrollableFlutterAllWidgets> createState() =>
      _FlutterDraggableScrollableFlutterAllWidgetsState();
}

class _FlutterDraggableScrollableFlutterAllWidgetsState
    extends State<FlutterDraggableScrollableFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 83,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DraggableScrollable Widget'),
          const H3('Click to View Live'),
          const Live(page: DraggableScrollableWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DraggableScrollableWidget extends StatefulWidget {
   const DraggableScrollableWidget({super.key});
 
   @override
   State<DraggableScrollableWidget> createState() =>
       _DraggableScrollableWidgetState();
 }
 
 class _DraggableScrollableWidgetState extends State<DraggableScrollableWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DraggableScrollable Widget"),
         centerTitle: true,
       ),
       body: DraggableScrollableSheet(
         builder: (BuildContext context, ScrollController scrollController) {
           return Container(
             color: Colors.orangeAccent,
             child: ListView.builder(
               controller: scrollController,
               itemCount: 25,
               itemBuilder: (BuildContext context, int index) {
                 return ListTile(
                   title: Text('Item \$index'),
                 );
               },
             ),
           );
         },
       ),
     );
   }
 }

''';
