import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets122_LayoutBuilder.dart';

class FlutterLayoutBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterLayoutBuilderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterLayoutBuilderFlutterAllWidgets> createState() =>
      _FlutterLayoutBuilderFlutterAllWidgetsState();
}

class _FlutterLayoutBuilderFlutterAllWidgetsState
    extends State<FlutterLayoutBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 122,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('LayoutBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: LayoutBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class LayoutBuilderWidget extends StatefulWidget {
   const LayoutBuilderWidget({super.key});
 
   @override
   State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
 }
 
 class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("LayoutBuilder Widget"),
         centerTitle: true,
       ),
       body: LayoutBuilder(
         builder: (BuildContext context, BoxConstraints constraints) {
           if (constraints.maxWidth > 600) {
             return Center(
               child: Image.asset('assets/images/3.jpg'),
             );
           } else {
             return const Center(
               child: Text('Screen under 600'),
             );
           }
         },
       ),
     );
   }
 }

''';
