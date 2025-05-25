import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets199_ThemeData.dart';

class FlutterThemeDataFlutterAllWidgets extends StatefulWidget {
  const FlutterThemeDataFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterThemeDataFlutterAllWidgets> createState() =>
      _FlutterThemeDataFlutterAllWidgetsState();
}

class _FlutterThemeDataFlutterAllWidgetsState
    extends State<FlutterThemeDataFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 199,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ThemeData Widget'),
          const H3('Click to View Live'),
          const Live(page: ThemeDataWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ThemeDataWidget extends StatefulWidget {
   const ThemeDataWidget({super.key});
 
   @override
   State<ThemeDataWidget> createState() => _ThemeDataWidgetState();
 }
 
 class _ThemeDataWidgetState extends State<ThemeDataWidget> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Brightness.light,
         scaffoldBackgroundColor: Colors.redAccent,
         primaryColor: Colors.orangeAccent,
       ),
       darkTheme: ThemeData(
         brightness: Brightness.dark,
         scaffoldBackgroundColor: Colors.redAccent,
         primaryColor: Colors.orangeAccent,
       ),
       home: Scaffold(
         appBar: AppBar(
           title: const Text("ThemeData Widget"),
           centerTitle: true,
         ),
         body: Container(
           width: double.infinity,
           height: double.infinity,
           color: Theme.of(context).primaryColor,
         ),
       ),
     );
   }
 }

''';
