import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets50_CupertinoApp.dart';

class FlutterCupertinoAppFlutterAllWidgets extends StatefulWidget {
  const FlutterCupertinoAppFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterCupertinoAppFlutterAllWidgets> createState() =>
      _FlutterCupertinoAppFlutterAllWidgetsState();
}

class _FlutterCupertinoAppFlutterAllWidgetsState
    extends State<FlutterCupertinoAppFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 50,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('CupertinoApp Widget'),
          const H3('Click to View Live'),
          const Live(page: CupertinoAppWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/cupertino.dart';
 
 class CupertinoAppWidget extends StatefulWidget {
   const CupertinoAppWidget({super.key});
 
   @override
   State<CupertinoAppWidget> createState() => _CupertinoAppWidgetState();
 }
 
 class _CupertinoAppWidgetState extends State<CupertinoAppWidget> {
   @override
   Widget build(BuildContext context) {
     return const CupertinoApp(
       debugShowCheckedModeBanner: false,
       theme: CupertinoThemeData(
         brightness: Brightness.dark,
         scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
         primaryColor: CupertinoColors.systemOrange,
       ),
       home: CupertinoPageScaffold(
         navigationBar: CupertinoNavigationBar(
           middle: Text('Learn Smart'),
         ),
         child: Center(
           child: Icon(CupertinoIcons.share),
         ),
       ),
     );
   }
 }

''';
