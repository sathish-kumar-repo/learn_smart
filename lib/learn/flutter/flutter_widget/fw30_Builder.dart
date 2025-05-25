import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets30_Builder.dart';

class FlutterBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterBuilderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterBuilderFlutterAllWidgets> createState() =>
      _FlutterBuilderFlutterAllWidgetsState();
}

class _FlutterBuilderFlutterAllWidgetsState
    extends State<FlutterBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 30,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Builder Widget'),
          const H3('Click to View Live'),
          const Live(page: BuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class BuilderWidget extends StatefulWidget {
   const BuilderWidget({super.key});
 
   @override
   State<BuilderWidget> createState() => _BuilderWidgetState();
 }
 
 class _BuilderWidgetState extends State<BuilderWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Builder Widget"),
         centerTitle: true,
       ),
       body: myWidget(),
     );
   }
 }
 
 myWidget() => Builder(
       builder: (BuildContext context) {
         return Text(
           'Text with Theme',
           style: Theme.of(context).textTheme.displayLarge,
         );
       },
     );

''';
