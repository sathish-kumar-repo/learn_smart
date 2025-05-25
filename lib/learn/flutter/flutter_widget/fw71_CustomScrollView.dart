import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets71_CustomScrollView.dart';

class FlutterCustomScrollViewFlutterAllWidgets extends StatefulWidget {
  const FlutterCustomScrollViewFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCustomScrollViewFlutterAllWidgets> createState() =>
      _FlutterCustomScrollViewFlutterAllWidgetsState();
}

class _FlutterCustomScrollViewFlutterAllWidgetsState
    extends State<FlutterCustomScrollViewFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 71,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CustomScrollView Widget'),
          const H3('Click to View Live'),
          const Live(page: CustomScrollViewWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class CustomScrollViewWidget extends StatefulWidget {
   const CustomScrollViewWidget({super.key});
 
   @override
   State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
 }
 
 class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CustomScrollView Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: [
           SliverGrid(
             delegate: SliverChildBuilderDelegate(
               (context, index) {
                 return Container(
                   alignment: Alignment.center,
                   color: Colors.pinkAccent[100 * (index % 9)],
                   child: Text('Grid Item \$index'),
                 );
               },
               childCount: 50,
             ),
             gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
               maxCrossAxisExtent: 200.0,
               mainAxisSpacing: 10.0,
               crossAxisSpacing: 10.0,
               childAspectRatio: 4.0,
             ),
           )
         ],
       ),
     );
   }
 }
 
 ///The delegate that provides the children for this widget. The children are constructed lazily using this delegate to avoid creating more children than are visible through the Viewport.
 /// double maxCrossAxisExtent. The maximum extent of tiles in the cross axis. This delegate will select a cross-axis extent for the tiles that is as large as possible subject to the following conditions: The extent evenly divides the cross-axis extent of the grid.

''';
