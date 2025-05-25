import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';

import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class SelfIntroduction extends StatefulWidget {
  const SelfIntroduction({Key? key}) : super(key: key);

  @override
  State<SelfIntroduction> createState() => _SelfIntroductionState();
}

class _SelfIntroductionState extends State<SelfIntroduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: englishTopics,
        img: 'english.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Tell me About Yourself'),
          const H2('Greetings'),
          const Li('Good morning Madam/Sir'),
          const H3('Another person ask tell me about yourself'),
          const Li('Before your start introduce yourself'),
          const Note(
              'Thank you for giving me this wonderful opportunity to introduce myself.'),
          const H3('Personal details'),
          const Li('My name is Sathish Kumar or\nI am Sathish Kumar'),
          const Li('I am from Madurai or\nI come from Madurai'),
          Note(note1),
          const Li(
              'I did my schooling at ABC higher secondary school in Madurai or\nI Completed my schooling at ABC higher secondary school in Madurai'),
          const H3('Achievements in School'),
          const Li('I scored 92% in 10th standard'),
          const Li('I got 90% in 12th standard'),
          const Li('I won a state level quiz competition'),
          const Li('I got first rank in my school'),
          const H3('College Details'),
          const Li(
              'I have a completed my bachelor\'s degree in Computer Science And Engineering from ABC College.'),
          const Li('or I have a degree in computer science'),
          const Li('or I did my graduation in B.Tech from ABC College Madurai'),
          const Li(
              'or I studied Computer Science and Engineering at ABC College in Madurai'),
          const Li('In present, I doing my MBA in ABC College Madurai'),
          const H3('Strengths'),
          const H4('Eg-1'),
          const Li(
              'I consider myself as a positive thinker. It helps me to achieve my goals. With the help of positive thinking, I can overcome the stress and I can adopt easily in any type of environment.'),
          const H4('Eg-2'),
          const Li(
              'I like to learn new things. I never miss any opportunities to learn something new.'),
          const H4('Eg-3'),
          const Li(
              'I am a self-motivated person. It helps me to stay positive in all situations'),
          const H3('Experience'),
          const H3('Weakness'),
          const H3('hobbies'),
          const H3('Long term goal'),
          const H3('Short term goal'),
          const H3('Says Thanks'),
          const Li('That solve about me, Thank you'),
        ],
      ),
    );
  }
}

var note1 = '''
Common Mistakes
  I am coming from Madurai
this is present continuous sentence
''';
