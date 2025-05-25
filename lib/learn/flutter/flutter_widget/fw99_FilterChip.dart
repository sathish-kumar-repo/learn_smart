import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets99_FilterChip.dart';

class FlutterFilterChipFlutterAllWidgets extends StatefulWidget {
  const FlutterFilterChipFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFilterChipFlutterAllWidgets> createState() =>
      _FlutterFilterChipFlutterAllWidgetsState();
}

class _FlutterFilterChipFlutterAllWidgetsState
    extends State<FlutterFilterChipFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 99,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FilterChip Widget'),
          const H3('Click to View Live'),
          const Live(page: FilterChipWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FilterChipWidget extends StatefulWidget {
   const FilterChipWidget({super.key});
 
   @override
   State<FilterChipWidget> createState() => _FilterChipWidgetState();
 }
 
 class _FilterChipWidgetState extends State<FilterChipWidget> {
   bool isSelected = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FilterChip Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: FilterChip(
           label: const Text('FilterChip'),
           selected: isSelected,
           onSelected: (bool value) {
             setState(() {
               isSelected = !isSelected;
             });
           },
           avatar: Text('f'),
         ),
       ), // FilterChip
     );
   }
 }

''';
