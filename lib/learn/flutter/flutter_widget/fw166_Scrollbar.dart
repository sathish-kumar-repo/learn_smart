import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets166_Scrollbar.dart';

class FlutterScrollbarFlutterAllWidgets extends StatefulWidget {
  const FlutterScrollbarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterScrollbarFlutterAllWidgets> createState() =>
      _FlutterScrollbarFlutterAllWidgetsState();
}

class _FlutterScrollbarFlutterAllWidgetsState
    extends State<FlutterScrollbarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 166,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Scrollbar Widget'),
          const H3('Click to View Live'),
          const Live(page: ScrollbarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ScrollbarWidget extends StatefulWidget {
   const ScrollbarWidget({super.key});
 
   @override
   State<ScrollbarWidget> createState() => _ScrollbarWidgetState();
 }
 
 class _ScrollbarWidgetState extends State<ScrollbarWidget> {
   final ScrollController controller = ScrollController();
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Scrollbar Widget"),
         centerTitle: true,
       ),
       body: Scrollbar(
         thickness: 10,
         radius: const Radius.circular(20),
         controller: controller,
         child: ListView.builder(
           controller: controller,
           itemCount: 40,
           itemBuilder: (BuildContext context, int index) {
             return ListTile(
               title: Text('Item \${index + 1}'),
             );
           },
         ),
       ),
     );
   }
 }

''';
