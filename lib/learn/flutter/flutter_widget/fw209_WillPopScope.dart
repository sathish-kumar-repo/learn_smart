import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets209_WillPopScope.dart';

class FlutterWillPopScopeFlutterAllWidgets extends StatefulWidget {
  const FlutterWillPopScopeFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterWillPopScopeFlutterAllWidgets> createState() =>
      _FlutterWillPopScopeFlutterAllWidgetsState();
}

class _FlutterWillPopScopeFlutterAllWidgetsState
    extends State<FlutterWillPopScopeFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 209,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('WillPopScope Widget'),
          const H3('Click to View Live'),
          const Live(page: WillPopScopeWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';

class WillPopScopeWidget extends StatefulWidget {
  const WillPopScopeWidget({super.key});

  @override
  State<WillPopScopeWidget> createState() => _WillPopScopeWidgetState();
}

class _WillPopScopeWidgetState extends State<WillPopScopeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WillPopScope Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const NextPage();
                },
              ),
            );
          },
          child: const Text('Next Page'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text("Next Page"),
        ),
        body: const Center(),
      ),
      onWillPop: () async {
        return false; // therefore it block the back button
      },
    );
  }
}
''';
