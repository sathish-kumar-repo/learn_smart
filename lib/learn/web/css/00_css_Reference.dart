import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class reference extends StatefulWidget {
  const reference({Key? key}) : super(key: key);

  @override
  State<reference> createState() => _referenceState();
}

class _referenceState extends State<reference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('CSS and CSS3 Properties Reference Guide'),
          Link('https://www.tutorjoes.in/css_tutorial/css_properties')
        ],
      ),
    );
  }
}
