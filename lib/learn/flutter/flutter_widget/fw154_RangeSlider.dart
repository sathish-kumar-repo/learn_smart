import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets154_RangeSlider.dart';

class FlutterRangeSliderFlutterAllWidgets extends StatefulWidget {
  const FlutterRangeSliderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterRangeSliderFlutterAllWidgets> createState() =>
      _FlutterRangeSliderFlutterAllWidgetsState();
}

class _FlutterRangeSliderFlutterAllWidgetsState
    extends State<FlutterRangeSliderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 154,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('RangeSlider Widget'),
          const H3('Click to View Live'),
          const Live(page: RangeSliderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class RangeSliderWidget extends StatefulWidget {
   const RangeSliderWidget({super.key});
 
   @override
   State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
 }
 
 class _RangeSliderWidgetState extends State<RangeSliderWidget> {
   RangeValues values = const RangeValues(0.1, 0.5);
   @override
   Widget build(BuildContext context) {
     // RangeLabels labels=RangeLabels(start, end);
     RangeLabels labels = RangeLabels(
       values.start.toString(),
       values.end.toString(),
     );
     return Scaffold(
       appBar: AppBar(
         title: const Text("RangeSlider Widget"),
         centerTitle: true,
       ),
       body: RangeSlider(
         values: values,
         divisions: 10,
         labels: labels,
         onChanged: (newValues) {
           setState(() {
             print(values);
             values = newValues;
             print(newValues);
           });
         },
       ),
     );
   }
 }

''';
