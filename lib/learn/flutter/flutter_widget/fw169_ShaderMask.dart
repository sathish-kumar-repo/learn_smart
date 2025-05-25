import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets169_ShaderMask.dart';

class FlutterShaderMaskFlutterAllWidgets extends StatefulWidget {
  const FlutterShaderMaskFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterShaderMaskFlutterAllWidgets> createState() =>
      _FlutterShaderMaskFlutterAllWidgetsState();
}

class _FlutterShaderMaskFlutterAllWidgetsState
    extends State<FlutterShaderMaskFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 169,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('ShaderMask Widget'),
          const H3('Click to View Live'),
          const Live(page: ShaderMaskWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class ShaderMaskWidget extends StatefulWidget {
   const ShaderMaskWidget({super.key});
 
   @override
   State<ShaderMaskWidget> createState() => _ShaderMaskWidgetState();
 }
 
 class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("ShaderMask Widget"),
         centerTitle: true,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: ShaderMask(
             shaderCallback: (Rect bounds) {
               print(bounds); // Rect.fromLTRB(0.0, 0.0, 376.0, 94.0)
               return const RadialGradient(
                 center: Alignment.topRight,
                 radius: 4.0,
                 colors: [
                   Colors.orangeAccent,
                   Colors.redAccent,
                 ],
                 tileMode: TileMode.mirror,
               ).createShader(bounds);
             },
             child: const Text(
               'This is cool looking text',
               style: TextStyle(fontSize: 40, color: Colors.white),
             ),
           ),
         ),
       ),
     );
   }
 }

''';
