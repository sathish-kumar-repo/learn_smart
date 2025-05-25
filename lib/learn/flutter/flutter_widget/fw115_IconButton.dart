import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets115_IconButton.dart';

class FlutterIconButtonFlutterAllWidgets extends StatefulWidget {
  const FlutterIconButtonFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterIconButtonFlutterAllWidgets> createState() =>
      _FlutterIconButtonFlutterAllWidgetsState();
}

class _FlutterIconButtonFlutterAllWidgetsState
    extends State<FlutterIconButtonFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 115,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IconButton Widget'),
          const H3('Click to View Live'),
          const Live(page: IconButtonWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class IconButtonWidget extends StatefulWidget {
   const IconButtonWidget({super.key});
 
   @override
   State<IconButtonWidget> createState() => _IconButtonWidgetState();
 }
 
 class _IconButtonWidgetState extends State<IconButtonWidget> {
   int click = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("IconButton Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             IconButton(
               icon: const Icon(Icons.add_box),
               iconSize: 50,
               onPressed: () {
                 setState(() {
                   click += 1;
                 });
               },
               //  with many other argument
             ),
             Text(
               'Click \$click',
               style: const TextStyle(
                 fontSize: 40,
               ),
             )
           ],
         ),
       ),
     );
   }
 }

''';
