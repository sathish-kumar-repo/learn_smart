import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets183_SilverPadding.dart';

class FlutterSilverPaddingFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverPaddingFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSilverPaddingFlutterAllWidgets> createState() =>
      _FlutterSilverPaddingFlutterAllWidgetsState();
}

class _FlutterSilverPaddingFlutterAllWidgetsState
    extends State<FlutterSilverPaddingFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 183,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverPadding Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverPaddingWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverPaddingWidget extends StatefulWidget {
   const SilverPaddingWidget({super.key});
 
   @override
   State<SilverPaddingWidget> createState() => _SilverPaddingWidgetState();
 }
 
 class _SilverPaddingWidgetState extends State<SilverPaddingWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SilverPadding Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: [
           SliverPadding(
             padding: const EdgeInsets.all(50.0),
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   Image.asset('assets/images/3.jpg'),
                 ],
               ),
             ),
           )
         ],
       ),
     );
   }
 }

''';
