import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class ColorsProperty extends StatefulWidget {
  const ColorsProperty({Key? key}) : super(key: key);

  @override
  State<ColorsProperty> createState() => _ColorsPropertyState();
}

class _ColorsPropertyState extends State<ColorsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: const MyPage(
        children: [
          H1('Colors in CSS'),
          P('CSS provides 145 colors names, from the most basic (black, white, orange, yellow, blue…) to the more specific (lawngreen, orchid, crimson…). Because the color names are hard to remember, and because you probably want very specific colors, color names are not often used.'),
          H3('Mostly Used'),
          Li('color format( eg: red)'),
          Li('hexdecimal'),
          Li('rgb(x,y,z)'),
          P('     rgb stands for red green blue'),
          P('     x,y,z belong 0 to 255'),
          Li('gba(x,y,z)'),
          P('     rgb stands for red green blue alpha(that mean opacity(transferency))'),
          P('     eg : rgba(255,0,0,0.5)'),
        ],
      ),
    );
  }
}
