import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets76_DatePicker.dart';

class FlutterDatePickerFlutterAllWidgets extends StatefulWidget {
  const FlutterDatePickerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDatePickerFlutterAllWidgets> createState() =>
      _FlutterDatePickerFlutterAllWidgetsState();
}

class _FlutterDatePickerFlutterAllWidgetsState
    extends State<FlutterDatePickerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 76,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DatePicker Widget'),
          const H3('Click to View Live'),
          const Live(page: DatePickerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DatePickerWidget extends StatefulWidget {
   const DatePickerWidget({super.key});
 
   @override
   State<DatePickerWidget> createState() => _DatePickerWidgetState();
 }
 
 class _DatePickerWidgetState extends State<DatePickerWidget> {
   DateTime selectedDate = DateTime.now();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DatePicker Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               '\${selectedDate.year} - \${selectedDate.month} - \${selectedDate.day}',
             ),
             ElevatedButton(
               onPressed: () async {
                 final DateTime? dateTime = await showDatePicker(
                   con  context,
                   initialDate: selectedDate,
                   firstDate: DateTime(2000),
                   lastDate: DateTime(3000),
                 );
                 if (dateTime != null) {
                   setState(() {
                     selectedDate = dateTime;
                   });
                 }
               },
               child: const Text('Choose date'),
             ),
           ],
         ),
       ),
     );
   }
 }

''';
