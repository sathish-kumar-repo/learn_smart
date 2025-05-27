import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Cookies extends StatefulWidget {
  const Cookies({Key? key}) : super(key: key);

  @override
  State<Cookies> createState() => _CookiesState();
}

class _CookiesState extends State<Cookies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 99,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Cookies'),
        ],
      ),
    );
  }
}
