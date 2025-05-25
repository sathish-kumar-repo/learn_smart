import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets57_CupertinoPageScaffold.dart';

class FlutterCupertinoPageScaffoldFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoPageScaffoldFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterCupertinoPageScaffoldFlutterAllWidgets> createState() =>
      _FlutterCupertinoPageScaffoldFlutterAllWidgetsState();
}

class _FlutterCupertinoPageScaffoldFlutterAllWidgetsState
    extends State<FlutterCupertinoPageScaffoldFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 57,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoPageScaffold Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoPageScaffoldWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 
 class CupertinoPageScaffoldWidget extends StatefulWidget {
   const CupertinoPageScaffoldWidget({super.key});
 
   @override
   State<CupertinoPageScaffoldWidget> createState() =>
       _CupertinoPageScaffoldWidgetState();
 }
 
 class _CupertinoPageScaffoldWidgetState
     extends State<CupertinoPageScaffoldWidget> {
   @override
   Widget build(BuildContext context) {
     return CupertinoApp(
       debugShowCheckedModeBanner: false,
       home: CupertinoPageScaffold(
         backgroundColor: const Color.fromARGB(255, 18, 32, 47),
         navigationBar: CupertinoNavigationBar(
           backgroundColor: CupertinoColors.systemGrey.withOpacity(0.6),
           middle: const Text('Learn Smart'),
           transitionBetweenRoutes: true,
         ),
         child: Stack(
           children: [
             Image.asset(
               'assets/images/back.jpg',
               fit: BoxFit.cover,
               height: double.infinity,
             ),
           ],
         ),
       ),
     );
   }
 }

''';
