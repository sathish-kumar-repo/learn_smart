import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/TopicName/widgetTopic.dart';
import 'package:learn_smart/learn/flutter/flutter_widget/widgetsTutorialLive/Widgets188_StreamBuilder.dart';

class FlutterStreamBuilderFlutterAllWidgets extends StatefulWidget {
  const FlutterStreamBuilderFlutterAllWidgets({Key? key}) : super(key: key);

  @override
  State<FlutterStreamBuilderFlutterAllWidgets> createState() =>
      _FlutterStreamBuilderFlutterAllWidgetsState();
}

class _FlutterStreamBuilderFlutterAllWidgetsState
    extends State<FlutterStreamBuilderFlutterAllWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 188,
        topicsName: flutterWidgetsTopics,
        img: 'Flutter.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('StreamBuilder Widget'),
          const H3('Click to View Live'),
          const Live(page: StreamBuilderWidget()),
          const H3('Source Code'),
          Code(title: 'main.dart', code: code, type: 'dart'),
        ],
      ),
    );
  }
}

var code = '''
import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({super.key});

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

// Fake FireBase Stream
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  // throw 'An error occured';
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StreamBuilder Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder(
          stream: generateStream,
          initialData: 0,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            }
            if (snapshot.hasError) {
              return const Text('Error');
            } else {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 40),
              );
            }
          },
        ),
      ),
    );
  }
}

''';
