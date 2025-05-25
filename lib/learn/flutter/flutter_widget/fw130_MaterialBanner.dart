import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets130_MaterialBanner.dart';

class FlutterMaterialBannerFlutterAllWidgets extends StatefulWidget {
  const FlutterMaterialBannerFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterMaterialBannerFlutterAllWidgets> createState() =>
      _FlutterMaterialBannerFlutterAllWidgetsState();
}

class _FlutterMaterialBannerFlutterAllWidgetsState
    extends State<FlutterMaterialBannerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 130,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('MaterialBanner Widget'),
          const H3('Click to View Live'),
          const Live(page: MaterialBannerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MaterialBannerWidget extends StatefulWidget {
   const MaterialBannerWidget({super.key});
 
   @override
   State<MaterialBannerWidget> createState() => _MaterialBannerWidgetState();
 }
 
 class _MaterialBannerWidgetState extends State<MaterialBannerWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("MaterialBanner Widget"),
         centerTitle: true,
       ),
       body: Center(
         child: ElevatedButton(
           child: const Text('open'),
           onPressed: () {
             ScaffoldMessenger.of(context).showMaterialBanner(
               MaterialBanner(
                 padding: const EdgeInsets.all(20),
                 content: const Text('Subscribe!'),
                 leading: const Icon(Icons.notifications_active_outlined),
                 elevation: 5,
                 actions: [
                   TextButton(
                     onPressed: () {
                       ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                     },
                     child: const Text('Dismiss'),
                   )
                 ],
               ),
             );
           },
         ),
       ),
     );
   }
 }

''';
