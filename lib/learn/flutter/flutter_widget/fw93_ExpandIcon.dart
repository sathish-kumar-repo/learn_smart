import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets93_ExpandIcon.dart';

class FlutterExpandIconFlutterAllWidgets extends StatefulWidget {
  const FlutterExpandIconFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterExpandIconFlutterAllWidgets> createState() =>
      _FlutterExpandIconFlutterAllWidgetsState();
}

class _FlutterExpandIconFlutterAllWidgetsState
    extends State<FlutterExpandIconFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 93,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ExpandIcon Widget'),
          const H3('Click to View Live'),
          const Live(page: ExpandIconWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ExpandIconWidget extends StatefulWidget {
   const ExpandIconWidget({super.key});
 
   @override
   State<ExpandIconWidget> createState() => _ExpandIconWidgetState();
 }
 
 class _ExpandIconWidgetState extends State<ExpandIconWidget> {
   bool _isExpanded = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("ExpandIcon Widget"),
         centerTitle: true,
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             color: Colors.orangeAccent,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   padding: const EdgeInsets.all(10.0),
                   child: const Text(
                     'Title',
                     style: TextStyle(color: Colors.white, fontSize: 22),
                   ),
                 ),
                 ExpandIcon(
                   isExpanded: _isExpanded,
                   color: Colors.white,
                   expandedColor: Colors.black,
                   onPressed: (bool isExpanded) {
                     setState(() {
                       _isExpanded = !isExpanded;
                     });
                   },
                 )
               ],
             ),
           ),
           if (_isExpanded)
             const Padding(
               padding: EdgeInsets.all(15),
               child: Text('Learn Smart'),
             )
         ],
       ),
     );
   }
 }

''';
