import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets147_PlatformMenuBar.dart';

class FlutterPlatformMenuBarFlutterAllWidgets extends StatefulWidget {
  const FlutterPlatformMenuBarFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterPlatformMenuBarFlutterAllWidgets> createState() =>
      _FlutterPlatformMenuBarFlutterAllWidgetsState();
}

class _FlutterPlatformMenuBarFlutterAllWidgetsState
    extends State<FlutterPlatformMenuBarFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 147,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('PlatformMenuBar Widget'),
          const H3('Click to View Live'),
          const Live(page: PlatformMenuBarWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';
 
 class PlatformMenuBarWidget extends StatefulWidget {
   const PlatformMenuBarWidget({super.key});
 
   @override
   State<PlatformMenuBarWidget> createState() => _PlatformMenuBarWidgetState();
 }
 
 class _PlatformMenuBarWidgetState extends State<PlatformMenuBarWidget> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("PlatformMenuBar Widget"),
         centerTitle: true,
       ),
       // this widget is only available in macOS
       body: PlatformMenuBar(
         menus: [
           PlatformMenu(
             label: 'Platform Menu',
             menus: [
               PlatformMenuItemGroup(
                 members: [
                   PlatformMenuItem(
                     label: 'About',
                     onSelected: () {},
                   ),
                 ],
               ),
               PlatformMenuItemGroup(
                 members: [
                   PlatformMenu(
                     label: 'Message',
                     menus: [
                       PlatformMenuItem(
                         onSelected: () {},
                         shortcut: const CharacterActivator('F'),
                         label: 'Learn more',
                       )
                     ],
                   )
                 ],
               ),
               if (PlatformProvidedMenuItem.hasMenu(
                   PlatformProvidedMenuItemType.quit))
                 const PlatformProvidedMenuItem(
                     type: PlatformProvidedMenuItemType.quit)
             ],
           )
         ],
         child: const Center(
           child: Text('Learn Smart'),
         ),
       ),
     );
   }
 }

''';
