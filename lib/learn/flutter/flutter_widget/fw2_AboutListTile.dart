import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets02_AboutListTile.dart';

class FlutterAboutListTileFlutterAllWidgets extends StatefulWidget {
  const FlutterAboutListTileFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterAboutListTileFlutterAllWidgets> createState() =>
      _FlutterAboutListTileFlutterAllWidgetsState();
}

class _FlutterAboutListTileFlutterAllWidgetsState
    extends State<FlutterAboutListTileFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('AboutListTile Widget'),
          const H3('Click to View Live'),
          const Live(page: AboutListTileWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class AboutListTileWidget extends StatefulWidget {
   const AboutListTileWidget({super.key});
 
   @override
   State<AboutListTileWidget> createState() => _AboutListTileWidgetState();
 }
 
 class _AboutListTileWidgetState extends State<AboutListTileWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("AboutListTile Widget"),
         centerTitle: true,
       ),
       body: const Center(
         child: AboutListTile(
           icon: Icon(Icons.info),
           applicationIcon: FlutterLogo(),
           applicationLegalese: 'Legalese',
           applicationName: 'Flutter App',
           applicationVersion: 'version 1.0.0',
           aboutBoxChildren: [
             Text("This is a text created by Sathish Kumar"),
           ],
         ),
       ),
     );
   }
 }

''';
