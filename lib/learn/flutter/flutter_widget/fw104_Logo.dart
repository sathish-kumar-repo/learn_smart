import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets104_FlutterLogo.dart';

class FlutterLogoFlutterAllWidgets extends StatefulWidget {
  const FlutterLogoFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterLogoFlutterAllWidgets> createState() =>
      _FlutterLogoFlutterAllWidgetsState();
}

class _FlutterLogoFlutterAllWidgetsState
    extends State<FlutterLogoFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 104,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Logo Widget'),
          const H3('Click to View Live'),
          const Live(page: FlutterLogoWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class LogoWidget extends StatefulWidget {
   const LogoWidget({super.key});
 
   @override
   State<LogoWidget> createState() => _LogoWidgetState();
 }
 
 class _LogoWidgetState extends State<LogoWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Logo Widget"),
         centerTitle: true,
       ),
       body: const FlutterLogo(
         size: 300,
         style: FlutterLogoStyle.stacked,
         textColor: Colors.blue,
       ),
     );
   }
 }

''';
