import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets148_PopupMenuButton.dart';

class FlutterPopupMenuButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterPopupMenuButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPopupMenuButtonFlutterAllWidgets> createState() =>
      _FlutterPopupMenuButtonFlutterAllWidgetsState();
}

class _FlutterPopupMenuButtonFlutterAllWidgetsState
    extends State<FlutterPopupMenuButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 148,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PopupMenuButton Widget'),
          const H3('Click to View Live'),
          const Live(page: PopupMenuButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PopupMenuButtonWidget extends StatefulWidget {
   const PopupMenuButtonWidget({super.key});
 
   @override
   State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
 }
 
 class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
   String title = 'First item';
   String item1 = 'First item';
   String item2 = 'Seconds item';
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PopupMenuButton Widget"),
         centerTitle: true,
       ),
       body: ListTile(
         title: Text(title),
         trailing: PopupMenuButton(
           itemBuilder: (BuildContext context) => [
             PopupMenuItem(
               value: item1,
               child: Text(item1),
             ),
             PopupMenuItem(
               value: item2,
               child: Text(item2),
             ),
           ],
           onSelected: (String newValue) {
             setState(() {
               title = newValue;
             });
           },
         ),
       ),
     );
   }
 }

''';
