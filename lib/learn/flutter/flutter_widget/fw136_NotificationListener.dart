import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets136_NotificationListener.dart';

class FlutterNotificationListenerFlutterAllWidgets extends StatefulWidget {
  const FlutterNotificationListenerFlutterAllWidgets({Key? key})
      : super(key: key);

  @override
  State<FlutterNotificationListenerFlutterAllWidgets> createState() =>
      _FlutterNotificationListenerFlutterAllWidgetsState();
}

class _FlutterNotificationListenerFlutterAllWidgetsState
    extends State<FlutterNotificationListenerFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 136,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('NotificationListener Widget'),
          const H3('Click to View Live'),
          const Live(page: NotificationListenerWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class NotificationListenerWidget extends StatefulWidget {
   const NotificationListenerWidget({super.key});
 
   @override
   State<NotificationListenerWidget> createState() =>
       _NotificationListenerWidgetState();
 }
 
 class _NotificationListenerWidgetState
     extends State<NotificationListenerWidget> {
   String message = 'New';
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("NotificationListener Widget"),
         centerTitle: true,
       ),
       body: Column(
         children: [
           Container(
             height: 60,
             color: Colors.orangeAccent,
             child: Center(
               child: Text(message),
             ),
           ),
           Expanded(
             child: NotificationListener<ScrollNotification>(
               onNotification: (scrollNotification) {
                 if (scrollNotification is ScrollStartNotification) {
                   setState(() {
                     message = 'Scroll Started';
                   });
                 } else if (scrollNotification is ScrollUpdateNotification) {
                   setState(() {
                     message = 'Scroll Updated';
                   });
                 } else if (scrollNotification is ScrollEndNotification) {
                   setState(() {
                     message = 'Scroll Ended';
                   });
                 }
                 return true;
               },
               child: ListView.builder(
                 itemCount: 100,
                 itemBuilder: (context, index) {
                   return ListTile(
                     title: Text('Item: \$index'),
                   );
                 },
               ),
             ),
           )
         ],
       ),
     );
   }
 }

''';
