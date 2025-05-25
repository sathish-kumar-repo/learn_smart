import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class AsyncAwaitJS extends StatefulWidget {
  const AsyncAwaitJS({Key? key}) : super(key: key);

  @override
  State<AsyncAwaitJS> createState() => _AsyncAwaitJSState();
}

class _AsyncAwaitJSState extends State<AsyncAwaitJS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 89,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Async and Await'),
        ],
      ),
    );
  }
}
