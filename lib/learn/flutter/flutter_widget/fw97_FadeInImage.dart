import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets97_FadeInImage.dart';

class FlutterFadeInImageFlutterAllWidgets extends StatefulWidget {
  const FlutterFadeInImageFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFadeInImageFlutterAllWidgets> createState() =>
      _FlutterFadeInImageFlutterAllWidgetsState();
}

class _FlutterFadeInImageFlutterAllWidgetsState
    extends State<FlutterFadeInImageFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 97,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FadeInImage Widget'),
          const H3('Click to View Live'),
          const Live(page: FadeInImageWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FadeInImageWidget extends StatefulWidget {
   const FadeInImageWidget({super.key});
 
   @override
   State<FadeInImageWidget> createState() => _FadeInImageWidgetState();
 }
 
 class _FadeInImageWidgetState extends State<FadeInImageWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("FadeInImage Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: FadeInImage.assetNetwork(
           placeholder: 'assets/images/1.jpg',
           image: 'https://picsum.photos/250?image=9',
         ),
       ),
     );
   }
 }

''';
