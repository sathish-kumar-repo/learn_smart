import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets177_Slider.dart';

class FlutterSliderFlutterAllWidgets extends StatefulWidget {
  const FlutterSliderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSliderFlutterAllWidgets> createState() =>
      _FlutterSliderFlutterAllWidgetsState();
}

class _FlutterSliderFlutterAllWidgetsState
    extends State<FlutterSliderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 177,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Slider Widget'),
          const H3('Click to View Live'),
          const Live(page: SliderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SliderWidget extends StatefulWidget {
   const SliderWidget({super.key});
 
   @override
   State<SliderWidget> createState() => _SliderWidgetState();
 }
 
 class _SliderWidgetState extends State<SliderWidget> {
   double _currentSliderValue = 20;
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Slider Widget"),
         centerTitle: true,
       ),
       body: Slider(
         value: _currentSliderValue,
         max: 100,
         divisions: 5,
         label: _currentSliderValue.round().toString(),
         onChanged: (double value) {
           setState(() {
             _currentSliderValue = value;
           });
         },
       ),
     );
   }
 }

''';
