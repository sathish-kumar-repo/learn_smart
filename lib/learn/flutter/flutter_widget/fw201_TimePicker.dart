import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets201_TimePicker.dart';

class FlutterTimePickerFlutterAllWidgets extends StatefulWidget {
  const FlutterTimePickerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterTimePickerFlutterAllWidgets> createState() =>
      _FlutterTimePickerFlutterAllWidgetsState();
}

class _FlutterTimePickerFlutterAllWidgetsState
    extends State<FlutterTimePickerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 201,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('TimePicker Widget'),
          const H3('Click to View Live'),
          const Live(page: TimePickerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class TimePickerWidget extends StatefulWidget {
   const TimePickerWidget({super.key});
 
   @override
   State<TimePickerWidget> createState() => _TimePickerWidgetState();
 }
 
 class _TimePickerWidgetState extends State<TimePickerWidget> {
   TimeOfDay selectedTime = TimeOfDay.now();
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("TimePicker Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               '\${selectedTime.hour}:\${selectedTime.minute}',
             ),
             ElevatedButton(
               onPressed: () async {
                 final TimeOfDay? timeOfDay = await showTimePicker(
                   // which is called nullble
                   con  context,
                   initialTime: selectedTime,
                   initialEntryMode: TimePickerEntryMode.dial,
                 );
                 if (timeOfDay != null) {
                   setState(() {
                     selectedTime = timeOfDay;
                   });
                 }
               },
               child: Text('Choose Time'),
             )
           ],
         ),
       ),
     );
   }
 }

''';
