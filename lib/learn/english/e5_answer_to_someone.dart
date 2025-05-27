import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class AnswerSentence extends StatefulWidget {
  const AnswerSentence({Key? key}) : super(key: key);

  @override
  State<AnswerSentence> createState() => _AnswerSentenceState();
}

class _AnswerSentenceState extends State<AnswerSentence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: englishTopics,
        img: 'english.jpg',
      ),
      body: MyPage(
        children: [
          H1('Answer to Someone'),
          Sentence(
            sno: 1,
            eng: 'Yes',
            tam: 'ஆமாம்',
          ),
          Sentence(
            sno: 2,
            eng: 'No',
            tam: 'இல்லை',
          ),
          Sentence(
            sno: 3,
            eng: 'Nothing',
            tam: 'ஒன்றுமில்லை',
          ),
          Sentence(
            sno: 4,
            eng: 'Oh yes',
            tam: 'சரி',
          ),
          Sentence(
            sno: 5,
            eng: 'O.k',
            tam: 'சரி,பரவாயில்லை, ஆகட்டும்',
          ),
          Sentence(
            sno: 6,
            eng: 'That\'s all',
            tam: 'அவ்வளவுதான்',
          ),
          Sentence(
            sno: 7,
            eng: 'Quite right',
            tam: 'முற்றிலும் சரி',
          ),
          Sentence(
            sno: 8,
            eng: 'All right',
            tam: 'பரவாயில்லை, சரி',
          ),
          Sentence(
            sno: 9,
            eng: 'Nothing to worry',
            tam: 'கவலைப்பட ஒன்றுமில்லை',
          ),
          Sentence(
            sno: 10,
            eng: 'It\'s all right',
            tam: 'பரவாயில்லை',
          ),
          Sentence(
            sno: 11,
            eng: 'Certainly',
            tam: 'நிச்சயமாக',
          ),
          Sentence(
            sno: 12,
            eng: 'Surely',
            tam: 'நிச்சயமாக',
          ),
          Sentence(
            sno: 13,
            eng: 'Indeed',
            tam: 'உண்மையில்',
          ),
          Sentence(
            sno: 14,
            eng: 'Of course',
            tam: 'உண்மையில்',
          ),
          Sentence(
            sno: 15,
            eng: 'It\'s too bad',
            tam: 'ரொம்ப மோசம்',
          ),
          Sentence(
            sno: 16,
            eng: 'Tt\'s too late',
            tam: 'காலம் கடந்து விட்டது',
          ),
          Sentence(
            sno: 17,
            eng: 'It seems so',
            tam: 'அப்படித்தான் தெரிகிறது',
          ),
          Sentence(
            sno: 18,
            eng: 'It appears so',
            tam: 'அப்படித்தான் தோன்றுகிறது',
          ),
          Sentence(
            sno: 19,
            eng: 'I think so',
            tam: 'அப்படித்தான் நினைக்கிறேன்',
          ),
          Sentence(
            sno: 20,
            eng: 'I hope so',
            tam: 'அப்படித்தான் நம்புகிறேன்',
          ),
          Sentence(
            sno: 21,
            eng: 'I believe so',
            tam: 'அப்படித்தான் நம்புகிறேன்',
          ),
          Sentence(
            sno: 22,
            eng: 'I don\'t think so',
            tam: 'நான் அப்படி நினைக்கவில்லை',
          ),
          Sentence(
            sno: 23,
            eng: 'I don\'t believe so',
            tam: 'நான் அப்படி நம்பவில்லை',
          ),
          Sentence(
            sno: 24,
            eng: 'It doesn\'t seem so',
            tam: 'அப்படித் தெரியவில்லை',
          ),
          Sentence(
            sno: 25,
            eng: 'It doesn\'t appear so',
            tam: 'அப்படித் தோன்றவில்லை',
            bd: false,
          ),
          SizedBox(height: 10),
          P('Who? (ஊ) என்ற கேள்வி வரும்போது Somebody (சம்படி), Anybody (எனிபடி), Everybody (எவ்வெரிபடி) முதலிய பதில்களை சொல்ல வேண்டிய அவசியம் ஏற்படும். ஆகவே அந்த ஆங்கில வார்த்தைகளுக்கான தமிழ் அர்த்தங்களை நன்கு நினைவு படுத்திக் கொள்ளவும்.'),
          Li('Somebody - யாரோ ஒருவர் அல்லது முன்பின் தெரியாத நபர்.'),
          Li('Anybody - யாரேனும் ஒருவர்.'),
          Li('Everybody - ஒவ்வொரு நபரும்.'),
        ],
      ),
    );
  }
}
