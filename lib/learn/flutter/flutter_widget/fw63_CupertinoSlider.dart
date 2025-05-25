import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets63_CupertinoSlider.dart';

class FlutterCupertinoSliderFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoSliderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoSliderFlutterAllWidgets> createState() =>
      _FlutterCupertinoSliderFlutterAllWidgetsState();
}

class _FlutterCupertinoSliderFlutterAllWidgetsState
    extends State<FlutterCupertinoSliderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 63,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoSlider Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoSliderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
 
 class CupertinoSliderWidget extends StatefulWidget {
   const CupertinoSliderWidget({super.key});
 
   @override
   State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
 }
 
 class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
   double _currentValue = 1;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoSlider Widget"),
         centerTitle: true,
       ),
       body: SizedBox(
         width: double.infinity,
         child: Column(
           children: [
             const SizedBox(height: 50),
             Text(_currentValue.toString()),
             const SizedBox(height: 50),
             CupertinoSlider(
               value: _currentValue,
               min: 0,
               max: 10,
               divisions: 10,
               onChanged: (selectedValue) {
                 setState(() {
                   _currentValue = selectedValue;
                 });
               },
             )
           ],
         ),
       ),
     );
   }
 }

''';
