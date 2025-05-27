import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassIntro extends StatefulWidget {
  const SassIntro({Key? key}) : super(key: key);

  @override
  State<SassIntro> createState() => _SassIntroState();
}

class _SassIntroState extends State<SassIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: const MyPage(
        children: [
          H1('Intro of Sass'),
          H3('Problem in CSS'),
          Li('Disorganized'),
          Li('Maintenance in Hard'),
          Li('Auto-generation of additional codes'),
          Li('Much more'),
          H3('What is CSS ProProcessor ?'),
          P('   - Script in Language'),
          P('   (CSS Preprocessor are scripting languages that extend the default capabilities of CSS'),
          H3('Benefits of using CSS ProProcessor?'),
          P('   - Programming Logics'),
          P('      - Variables'),
          P('      - If-Else Conditions'),
          P('      - For, While Loops'),
          P('      - Functions and Mixins'),
          P('      - Nested Support & Much more'),
          H3('Top CSS ProProcessor'),
          Li('SASS'),
          Li('Less'),
          Li('Stylus'),
          H3('Difference between SASS, SCSS, LESS, CSS'),
          H4('Cascading Style Sheets (CSS)'),
          P('CSS is the language we use to style an Html documents'),
          H4('Syntactically Awesome Style Sheets (SASS)'),
          P('Sass is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets.'),
          Li('.sass - Indentation style'),
          Li('.scss - Traditional CSS style'),
          H4('LESS'),
          P('Less is dynamic preprocessor style sheet language that can be compiles into Cascading Style Sheets and run on the client side or server side.'),
        ],
      ),
    );
  }
}
