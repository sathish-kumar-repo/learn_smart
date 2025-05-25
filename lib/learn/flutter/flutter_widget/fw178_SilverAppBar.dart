import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets178_SilverAppBar.dart';

class FlutterSilverAppBarFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverAppBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSilverAppBarFlutterAllWidgets> createState() =>
      _FlutterSilverAppBarFlutterAllWidgetsState();
}

class _FlutterSilverAppBarFlutterAllWidgetsState
    extends State<FlutterSilverAppBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 178,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverAppBar Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverAppBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverAppBarWidget extends StatefulWidget {
   const SilverAppBarWidget({super.key});
 
   @override
   State<SilverAppBarWidget> createState() => _SilverAppBarWidgetState();
 }
 
 class _SilverAppBarWidgetState extends State<SilverAppBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             pinned: true, // true means appbar on the top
             floating: true, // coming back app bar
             expandedHeight: 160.0,
             flexibleSpace: FlexibleSpaceBar(
               title: Text('Learn smart'),
               background: Image.asset(
                 'assets/images/2.jpg',
                 fit: BoxFit.cover,
               ),
             ),
           ),
           SliverList(
             delegate: SliverChildBuilderDelegate(
               (context, index) {
                 return ListTile(
                   title: Text('Item \${1 + index}'),
                 );
               },
               childCount: 20,
             ),
           )
         ],
       ),
     );
   }
 }

''';
