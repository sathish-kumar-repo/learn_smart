import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets181_SilverList.dart';

class FlutterSilverListFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverListFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSilverListFlutterAllWidgets> createState() =>
      _FlutterSilverListFlutterAllWidgetsState();
}

class _FlutterSilverListFlutterAllWidgetsState
    extends State<FlutterSilverListFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 181,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverList Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverListWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverListWidget extends StatefulWidget {
   const SilverListWidget({super.key});
 
   @override
   State<SilverListWidget> createState() => _SilverListWidgetState();
 }
 
 class _SilverListWidgetState extends State<SilverListWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SilverList Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: <Widget>[
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (BuildContext context, int index) {
                 return ListTile(
                   title: Text('Item \${index + 1}'),
                   tileColor: Colors.orange[100 * (index % 9 + 1)],
                 );
               },
               childCount: 50,
             ),
           )
         ],
       ),
     );
   }
 }

''';
