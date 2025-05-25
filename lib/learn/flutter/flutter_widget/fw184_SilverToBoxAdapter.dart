import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets184_SilverToBoxAdapter.dart';

class FlutterSilverToBoxAdapterFlutterAllWidgets extends StatefulWidget {
  const FlutterSilverToBoxAdapterFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterSilverToBoxAdapterFlutterAllWidgets> createState() =>
      _FlutterSilverToBoxAdapterFlutterAllWidgetsState();
}

class _FlutterSilverToBoxAdapterFlutterAllWidgetsState
    extends State<FlutterSilverToBoxAdapterFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 184,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('SilverToBoxAdapter Widget'),
          const H3('Click to View Live'),
          const Live(page: SilverToBoxAdapterWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class SilverToBoxAdapterWidget extends StatefulWidget {
   const SilverToBoxAdapterWidget({super.key});
 
   @override
   State<SilverToBoxAdapterWidget> createState() =>
       _SilverToBoxAdapterWidgetState();
 }
 
 class _SilverToBoxAdapterWidgetState extends State<SilverToBoxAdapterWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("SilverToBoxAdapter Widget"),
         centerTitle: true,
       ),
       body: const CustomScrollView(
         slivers: [
           //any widget put inside the child
           SliverToBoxAdapter(
             child: SizedBox(
               height: 20,
               child: Center(
                 child: Text('Sliver to Box Adapter'),
               ),
             ),
           ),
           // Text('sathish') // this is error
         ],
       ),
     );
   }
 }

''';
