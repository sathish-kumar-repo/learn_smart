import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets107_FutureBuilder.dart';

class FlutterFutureBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterFutureBuilderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterFutureBuilderFlutterAllWidgets> createState() =>
      _FlutterFutureBuilderFlutterAllWidgetsState();
}

class _FlutterFutureBuilderFlutterAllWidgetsState
    extends State<FlutterFutureBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 107,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('FutureBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: FutureBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class FutureBuilderWidget extends StatefulWidget {
   const FutureBuilderWidget({super.key});
 
   @override
   State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
 }
 
 class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
   Future<String> getData() async {
     await Future.delayed(
       const Duration(seconds: 5),
     );
     // throw 'error';
     return 'I am Data';
   }
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           title: const Text("FutureBuilder Widget"),
           centerTitle: true,
         ),
         body: Center(
           child: FutureBuilder(
             future: getData(),
             builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
               if (snapshot.connectionState == ConnectionState.waiting) {
                 return const CircularProgressIndicator();
               }
               if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
               } else {
                 return Column(
                   children: [
                     Text(
                       snapshot.data.toString(),
                     ),
                     ElevatedButton(
                       onPressed: () {
                         setState(() {});
                       },
                       child: const Text('Refresh'),
                     ),
                   ],
                 );
               }
             },
           ),
         ));
   }
 }

''';
