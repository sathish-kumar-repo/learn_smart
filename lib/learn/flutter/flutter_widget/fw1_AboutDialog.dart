import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets01_AboutDialog.dart';

class FlutterAboutDialogFlutterAllWidgets extends StatefulWidget {
  const FlutterAboutDialogFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAboutDialogFlutterAllWidgets> createState() =>
      _FlutterAboutDialogFlutterAllWidgetsState();
}

class _FlutterAboutDialogFlutterAllWidgetsState
    extends State<FlutterAboutDialogFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AboutDialog Widget'),
          const H3('Click to View Live'),
          const Live(page: AboutDialogWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AboutDialogWidget extends StatefulWidget {
   const AboutDialogWidget({super.key});
 
   @override
   State<AboutDialogWidget> createState() => _AboutDialogWidgetState();
 }
 
 class _AboutDialogWidgetState extends State<AboutDialogWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AboutDialog Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           child: const Text("Show About Dialog"),
           onPressed: () {
             showDialog(
               con  context,
               builder: (context) => const AboutDialog(
                 applicationIcon: FlutterLogo(),
                 applicationLegalese: 'Legalese',
                 applicationName: "Flutter App",
                 applicationVersion: 'version 1.0.0',
                 children: [Text("This is a text created by Sathish Kumar")],
               ),
             );
           },
         ),
       ),
     );
   }
 }

''';
