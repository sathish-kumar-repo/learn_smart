import 'package:flutter/material.dart';
import 'package:learn_smart/widgets/code_pro.dart';

class IapIntro extends StatefulWidget {
  const IapIntro({Key? key}) : super(key: key);

  @override
  State<IapIntro> createState() => _IapIntroState();
}

class _IapIntroState extends State<IapIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      // drawer: MyDrawer(
      //   activeIndex: 1,
      //   topicsName: cPPProgramTopics,
      //   img: 'cpp.png',
      //   contain: true,
      // ),
      body: MyPage(
        children: [
          const H1('In App Purchase'),
          H3('3 simple steps'),
          Li('Setup in-App purchase'),
          Li('Purchase in Flutter App'),
          Li('Activate Purchased Feautures'),
        ],
      ),
    );
  }
}
