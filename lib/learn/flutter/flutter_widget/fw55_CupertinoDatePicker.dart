import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets55_CupertinoDatePicker.dart';

class FlutterCupertinoDatePickerFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoDatePickerFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoDatePickerFlutterAllWidgets> createState() =>
      _FlutterCupertinoDatePickerFlutterAllWidgetsState();
}

class _FlutterCupertinoDatePickerFlutterAllWidgetsState
    extends State<FlutterCupertinoDatePickerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 55,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoDatePicker Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoDatePickerWidget()),
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
 
 class CupertinoDatePickerWidget extends StatefulWidget {
   const CupertinoDatePickerWidget({super.key});
 
   @override
   State<CupertinoDatePickerWidget> createState() =>
       _CupertinoDatePickerWidgetState();
 }
 
 class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
   DateTime dateTime = DateTime(3000, 2, 1, 10, 20);
   /* DateTime(int year,
       [int month = 1,
       int day = 1,
       int hour = 0,
       int minute = 0,
       int second = 0,
       int millisecond = 0,
       int microsecond = 0])
       */
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoDatePicker Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: CupertinoButton(
           child: Text('\${dateTime.month}-\${dateTime.day}-\${dateTime.year}'),
           onPressed: () {
             showCupertinoModalPopup(
               con  context,
               builder: (context) => SizedBox(
                  ,
                 child: CupertinoDatePicker(
                   backgroundColor: Colors.white,
                   initialDateTime: dateTime,
                   use24hFormat: true,
                   // mode: CupertinoDatePickerMode.monthYear,
                   maximumYear: 3500,
                   minimumYear: 1900,
                   itemExtent: 50,
                   onDateTimeChanged: (DateTime newTime) {
                     setState(() => dateTime = newTime);
                   },
                 ),
               ),
             );
           },
         ),
       ),
     );
   }
 }

''';
