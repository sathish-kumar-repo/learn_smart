import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class MindSentence extends StatefulWidget {
  const MindSentence({Key? key}) : super(key: key);

  @override
  State<MindSentence> createState() => _MindSentenceState();
}

class _MindSentenceState extends State<MindSentence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: englishTopics,
        img: 'english.jpg',
      ),
      body: MyPage(
        children: [
          H1('Mind using Sentences'),
          P('Mind என்றால் மனம் உணர்வு, எண்ணம் என்று பல அர்த்தங்கள் இருந்தாலும் அது பல்வேறு சூழ்ந்லையில் எவ்வாறு மாறுபடுகிறது என்பதை கவனிக்கவும்'),
          Sentence(
            sno: 1,
            eng: 'He is broad minded',
            tam: 'அவர் பரந்த மனப்பான்மை கொண்டவர்',
          ),
          Sentence(
            sno: 2,
            eng: 'He is narrow minded',
            tam: 'அவர் குறுகிய மனப்பான்மை கொண்டவர்',
          ),
          Sentence(
            sno: 3,
            eng: 'He is mean minded',
            tam: 'அவர் அல்ப புத்தி உடையவர்',
          ),
          Sentence(
            sno: 4,
            eng: 'Mind your business',
            tam: 'நீ உன் வேலையை கவனி',
          ),
          Sentence(
            sno: 5,
            eng: 'Mind your own business',
            tam: 'நீ உன் வேலையை கவனி',
          ),
          Sentence(
            sno: 6,
            eng: 'Mind the steps',
            tam: 'படிகட்டுகளில் கவனமாக ஏறுங்கள்',
          ),
          Sentence(
            sno: 7,
            eng: 'Mind your words',
            tam: 'கவனமாகப் பேசு',
          ),
          Sentence(
            sno: 8,
            eng: 'Mind your tongue',
            tam: 'நாவை அடக்கிப் பேசு',
          ),
          Sentence(
            sno: 9,
            eng: 'Mind your language',
            tam: 'நாவை அடக்கிப் பேசி.',
          ),
          Sentence(
            sno: 10,
            eng: 'Bear in mind',
            tam: 'ஞாபகத்தில் வைத்துக்கொள்.',
          ),
        ],
      ),
    );
  }
}
