import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class IntroduceMyFriend extends StatefulWidget {
  const IntroduceMyFriend({Key? key}) : super(key: key);

  @override
  State<IntroduceMyFriend> createState() => _IntroduceMyFriendState();
}

class _IntroduceMyFriendState extends State<IntroduceMyFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: englishTopics,
        img: 'english.jpg',
      ),
      body: MyPage(
        children: [
          H1('Introduce Your Friend'),
          Li('HI,'),
          Li('This is my friend Rakesh.'),
          Li('He comes from Madurai'),
          Li('His Father\'s name is Mohan Singh.'),
          Li('He is a teacher,'),
          Li('His mother is a housewife'),
          Li('He Lives at Rampur'),
          Li('He is fond of Hindi Songs.'),
          Li('He wants to become a doctor in his life'),
          Li('His hobby is singing'),
          Li('He is my best friend'),
          Li('he is very laborious'),
          Li('he helps me in my study'),
          Li('That solve about my friend'),
        ],
      ),
    );
  }
}
