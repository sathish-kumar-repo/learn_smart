import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets58_CupertinoPicker.dart';

class FlutterCupertinoPickerFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoPickerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoPickerFlutterAllWidgets> createState() =>
      _FlutterCupertinoPickerFlutterAllWidgetsState();
}

class _FlutterCupertinoPickerFlutterAllWidgetsState
    extends State<FlutterCupertinoPickerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 58,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoPicker Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoPickerWidget()),
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
 
 class CupertinoPickerWidget extends StatefulWidget {
   const CupertinoPickerWidget({super.key});
 
   @override
   State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
 }
 
 class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
   int _selectedValue = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("CupertinoPicker Widget"),
         centerTitle: true,
       ),
       body: SafeArea(
         child: Center(
           child: CupertinoButton.filled(
             child: Text('Value = \$_selectedValue'),
             onPressed: () => showCupertinoModalPopup(
               con  context,
               builder: (_) => SizedBox(
                 width: double.infinity,
                  ,
                 child: CupertinoPicker(
                   backgroundColor: Colors.white,
                   // looping: true,
                   itemExtent: 30,
                   scrollController: FixedExtentScrollController(
                     initialItem: 1,
                   ),
                   children: const [
                     Text('0'),
                     Text('1'),
                     Text('2'),
                   ],
                   onSelectedItemChanged: (int value) {
                     setState(() {
                       _selectedValue = value;
                     });
                   },
                 ),
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
