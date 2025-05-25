import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets77_DateRangePicker.dart';

class FlutterDateRangePickerFlutterAllWidgets extends StatefulWidget {
  const FlutterDateRangePickerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterDateRangePickerFlutterAllWidgets> createState() =>
      _FlutterDateRangePickerFlutterAllWidgetsState();
}

class _FlutterDateRangePickerFlutterAllWidgetsState
    extends State<FlutterDateRangePickerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 77,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('DateRangePicker Widget'),
          const H3('Click to View Live'),
          const Live(page: DateRangePickerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class DateRangePickerWidget extends StatefulWidget {
   const DateRangePickerWidget({super.key});
 
   @override
   State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
 }
 
 class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
   DateTimeRange selectedDates = DateTimeRange(
     start: DateTime.now(),
     end: DateTime.now(),
   );
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("DateRangePicker Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               "\${selectedDates.duration.inDays}",
             ),
             ElevatedButton(
               onPressed: () async {
                 final DateTimeRange? dateTimeRange = await showDateRangePicker(
                   con  context,
                   firstDate: DateTime(2000),
                   lastDate: DateTime(3000),
                 );
                 if (dateTimeRange != null) {
                   setState(() {
                     selectedDates = dateTimeRange;
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
