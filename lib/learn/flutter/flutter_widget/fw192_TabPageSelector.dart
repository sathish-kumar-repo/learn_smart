import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets192_TabPageSelector.dart';

class FlutterTabPageSelectorFlutterAllWidgets extends StatefulWidget {
  const FlutterTabPageSelectorFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTabPageSelectorFlutterAllWidgets> createState() =>
      _FlutterTabPageSelectorFlutterAllWidgetsState();
}

class _FlutterTabPageSelectorFlutterAllWidgetsState
    extends State<FlutterTabPageSelectorFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 192,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TabPageSelector Widget'),
          const H3('Click to View Live'),
          const Live(page: TabPageSelectorWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 List<Widget> widget = const [
   Icon(Icons.home),
   Icon(Icons.settings),
   Icon(Icons.person),
 ];
 
 class TabPageSelectorWidget extends StatefulWidget {
   const TabPageSelectorWidget({super.key});
 
   @override
   State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
 }
 
 class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget>
     with SingleTickerProviderStateMixin {
   late final TabController controller;
   int _index = 0;
 
   @override
   void initState() {
     super.initState();
     controller = TabController(
       length: widget.length,
       initialIndex: _index,
       vsync: this,
     );
   }
 
   @override
   void dispose() {
     controller.dispose();
     super.dispose();
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TabPageSelector Widget"),
         centerTitle: true,
       ),
       body: Stack(
         alignment: Alignment.center,
         children: <Widget>[
           TabBarView(
             controller: controller,
             children: widget,
           ),
           Positioned(
             bottom: 40,
             child: TabPageSelector(
               controller: controller,
               color: Colors.black38,
             ),
           )
         ],
       ),
       floatingActionButton: ButtonBar(
         children: [
           FloatingActionButton.small(
             onPressed: () {
               (_index != widget.length - 1) ? _index++ : _index = 0;
               controller.animateTo(_index);
             },
             hoverElevation: 0,
             elevation: 0,
             child: const Icon(Icons.navigate_next),
           )
         ],
       ),
     );
   }
 }

''';
