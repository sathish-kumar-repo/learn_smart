import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class StylishPreference extends StatefulWidget {
  const StylishPreference({Key? key}) : super(key: key);

  @override
  State<StylishPreference> createState() => _StylishPreferenceState();
}

class _StylishPreferenceState extends State<StylishPreference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 66,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('Stylish Preferences'),
          H3('Default'),
          Li('id selectors first prefernces'),
          Li('class selectors second prefernces'),
          Li('element selectors third prefernces'),
          Note(
              'Suppose I change the rule(that is break the rule) => element selctors is first prefernces'),
          P('use !important'),
        ],
      ),
    );
  }
}
