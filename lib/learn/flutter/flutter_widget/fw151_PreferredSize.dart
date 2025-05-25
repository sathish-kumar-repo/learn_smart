import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets151_PreferredSize.dart';

class FlutterPreferredSizeFlutterAllWidgets extends StatefulWidget {
  const FlutterPreferredSizeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPreferredSizeFlutterAllWidgets> createState() =>
      _FlutterPreferredSizeFlutterAllWidgetsState();
}

class _FlutterPreferredSizeFlutterAllWidgetsState
    extends State<FlutterPreferredSizeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 151,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PreferredSize Widget'),
          const H3('Click to View Live'),
          const Live(page: FlutterPreferredSizeWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FlutterPreferredSizeWidget extends StatefulWidget {
   const FlutterPreferredSizeWidget({super.key});
 
   @override
   State<FlutterPreferredSizeWidget> createState() =>
       _FlutterPreferredSizeWidgetState();
 }
 
 class _FlutterPreferredSizeWidgetState
     extends State<FlutterPreferredSizeWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: PreferredSize(
         preferredSize: const Size.fromHeight(80.0),
         child: Container(
           height: 120,
           decoration: const BoxDecoration(
             gradient: LinearGradient(
               colors: <Color>[
                 Colors.redAccent,
                 Colors.orangeAccent,
               ],
             ),
           ),
           child: SafeArea(
             child: Center(
               child: ListTile(
                 textColor: Colors.white,
                 title: const Text('Learn Smart'),
                 trailing: IconButton(
                   icon: const Icon(
                     Icons.search,
                     size: 20,
                   ),
                   color: Colors.white,
                   onPressed: () {},
                 ),
               ),
             ),
           ),
         ),
       ),
       body: const Center(
         child: Text('Learn Smart'),
       ),
     );
   }
 }

''';
