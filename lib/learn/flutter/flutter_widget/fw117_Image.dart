import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets117_Image.dart';

class FlutterImageFlutterAllWidgets extends StatefulWidget {
  const FlutterImageFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterImageFlutterAllWidgets> createState() =>
      _FlutterImageFlutterAllWidgetsState();
}

class _FlutterImageFlutterAllWidgetsState
    extends State<FlutterImageFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 117,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Image Widget'),
          const H3('Click to View Live'),
          const Live(page: ImageWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ImageWidget extends StatefulWidget {
   const ImageWidget({super.key});
 
   @override
   State<ImageWidget> createState() => _ImageWidgetState();
 }
 
 class _ImageWidgetState extends State<ImageWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("Image Widget"),
         centerTitle: true,
       ),
       body: const Image(
         image: AssetImage('assets/images/2.jpg'),
         color: Colors.blue,
         colorBlendMode: BlendMode.colorBurn,
       ),
     );
   }
 }

''';
