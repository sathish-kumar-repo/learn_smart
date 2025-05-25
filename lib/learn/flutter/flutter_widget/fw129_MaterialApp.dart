import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets129_MaterialApp.dart';

class FlutterMaterialAppFlutterAllWidgets extends StatefulWidget {
  const FlutterMaterialAppFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterMaterialAppFlutterAllWidgets> createState() =>
      _FlutterMaterialAppFlutterAllWidgetsState();
}

class _FlutterMaterialAppFlutterAllWidgetsState
    extends State<FlutterMaterialAppFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 129,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('MaterialApp Widget'),
          const H3('Click to View Live'),
          const Live(page: MaterialAppWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class MaterialAppWidget extends StatefulWidget {
   const MaterialAppWidget({super.key});
 
   @override
   State<MaterialAppWidget> createState() => _MaterialAppWidgetState();
 }
 
 class _MaterialAppWidgetState extends State<MaterialAppWidget> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData.light(),
       darkTheme: ThemeData.dark(),
       themeMode: ThemeMode.dark,
       debugShowCheckedModeBanner: false,
 
       /// this is control language of your applications
       // localizationsDelegates: [
       //
       // ],
       // supportedLocales: const [
       //   Locale('en', ''), // English, no country code
       //   Locale('es', ''), // Spanish, no country code
       // ],
       // check the website flutter.dev
       // check the youtube video(title MaterialApp)
       home: Scaffold(
         appBar: AppBar(
           title: const Text("MaterialApp Widget"),
         ),
       ),
     );
   }
 }

''';
