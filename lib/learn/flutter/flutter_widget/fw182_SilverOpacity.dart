import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets182_SilverOpacity.dart';

class FlutterSilverOpacityFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverOpacityFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterSilverOpacityFlutterAllWidgets> createState() =>
      _FlutterSilverOpacityFlutterAllWidgetsState();
}

class _FlutterSilverOpacityFlutterAllWidgetsState
    extends State<FlutterSilverOpacityFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 182,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverOpacity Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverOpacityWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverOpacityWidget extends StatefulWidget {
   const SilverOpacityWidget({super.key});
 
   @override
   State<SilverOpacityWidget> createState() => _SilverOpacityWidgetState();
 }
 
 class _SilverOpacityWidgetState extends State<SilverOpacityWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.black,
       appBar: AppBar(
         title: const Text("SilverOpacity Widget"),
         centerTitle: true,
       ),
       body: CustomScrollView(
         slivers: [
           SliverOpacity(
             opacity: 0.1,
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   const Card(
                     child: SizedBox(
                       height: 50,
                       child: Center(
                         child: Text('Learn Smart'),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           ),
           SliverOpacity(
             opacity: 0.5,
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   const Card(
                     child: SizedBox(
                       height: 50,
                       child: Center(
                         child: Text('Learn Smart'),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           ),
           SliverOpacity(
             opacity: 0.8,
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   const Card(
                     child: SizedBox(
                       height: 50,
                       child: Center(
                         child: Text('Learn Smart'),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           ),
           SliverOpacity(
             opacity: 1,
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                 [
                   const Card(
                     child: SizedBox(
                       height: 50,
                       child: Center(
                         child: Text('Learn Smart'),
                       ),
                     ),
                   )
                 ],
               ),
             ),
           ),
         ],
       ),
     );
   }
 }

''';
