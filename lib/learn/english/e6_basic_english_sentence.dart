import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class BasicEnglishSentence extends StatefulWidget {
  const BasicEnglishSentence({Key? key}) : super(key: key);

  @override
  State<BasicEnglishSentence> createState() => _BasicEnglishSentenceState();
}

class _BasicEnglishSentenceState extends State<BasicEnglishSentence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: englishTopics,
        img: 'english.jpg',
      ),
      body: MyPage(
        children: [
          H1('Basic English Sentence'),
          Sentence(
            sno: 1,
            eng: 'Are you ready?',
            tam: 'நீங்கள் தயாரா?',
          ),
          Sentence(
            sno: 2,
            eng: 'Say once again',
            tam: 'மறுபடியும் சொல்',
          ),
          Sentence(
            sno: 3,
            eng: 'Blow your nose',
            tam: 'மூக்கைச் சிந்து',
          ),
          Sentence(
            sno: 4,
            eng: 'On which date?',
            tam: 'எத்தனாம் தேதி?',
          ),
          Sentence(
            sno: 5,
            eng: 'Yes, of course',
            tam: 'ஆமாம், நிச்சயமாக',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 6,
            eng: 'Hurry up please',
            tam: 'சீக்கிரம் ஆகட்டும்',
          ),
          Sentence(
            sno: 7,
            eng: 'Do you want',
            tam: 'உங்களுக்கு வேண்டுமா',
          ),
          Sentence(
            sno: 8,
            eng: 'Not required',
            tam: 'தேவையில்லை',
          ),
          Sentence(
            sno: 9,
            eng: 'As you wish',
            tam: 'உன் இஷ்டம் போல்',
          ),
          Sentence(
            sno: 10,
            eng: 'What for?',
            tam: 'எதற்க்காக?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 11,
            eng: 'How much?',
            tam: 'எவ்வளவு?',
          ),
          Sentence(
            sno: 12,
            eng: 'How many?',
            tam: 'எத்தனை?',
          ),
          Sentence(
            sno: 13,
            eng: 'How long?',
            tam: 'எவ்வளவு நேரம்?',
          ),
          Sentence(
            sno: 14,
            eng: 'Come soon',
            tam: 'சீக்கிரம் வா',
          ),
          Sentence(
            sno: 15,
            eng: 'Is it?',
            tam: 'அப்படியா?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 16,
            eng: 'May be',
            tam: 'இருக்கலாம்',
          ),
          Sentence(
            sno: 17,
            eng: 'Not now',
            tam: 'இப்போது இல்லை',
          ),
          Sentence(
            sno: 18,
            eng: 'Find that',
            tam: 'அதைக் கண்டுபிடி',
          ),
          Sentence(
            sno: 19,
            eng: 'So what?',
            tam: 'அதனால் என்ன?',
          ),
          Sentence(
            sno: 20,
            eng: 'Like that',
            tam: 'அதுப் போல',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 21,
            eng: 'Forget it',
            tam: 'அதை  மறந்துவிடு',
          ),
          Sentence(
            sno: 22,
            eng: 'Remind me',
            tam: 'எனக்கு ஞாபகப்படுத்து',
          ),
          Sentence(
            sno: 23,
            eng: 'Calm down',
            tam: 'அமைதியாக இரு',
          ),
          Sentence(
            sno: 24,
            eng: 'Who is he?',
            tam: 'அவன் யார்?',
          ),
          Sentence(
            sno: 25,
            eng: 'Who knows?',
            tam: 'யாருக்குத் தெரியும்?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 26,
            eng: 'It may rain',
            tam: 'மழை பெய்யலாம்',
          ),
          Sentence(
            sno: 27,
            eng: 'Not yet',
            tam: 'இதுவரை இல்லை',
          ),
          Sentence(
            sno: 28,
            eng: 'You too',
            tam: 'நீங்களும்',
          ),
          Sentence(
            sno: 29,
            eng: 'Why not?',
            tam: 'ஏன் இல்லை?',
          ),
          Sentence(
            sno: 30,
            eng: 'Dead end',
            tam: 'முட்டுச்சந்து',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 31,
            eng: 'Hurry up',
            tam: 'சீக்கிரம்',
          ),
          Sentence(
            sno: 32,
            eng: 'As usual',
            tam: 'எப்பொழுதும் போலவே',
          ),
          Sentence(
            sno: 33,
            eng: 'Stand behind me',
            tam: 'என் பின்னால் நில்',
          ),
          Sentence(
            sno: 34,
            eng: 'Try again',
            tam: 'மறுபடியும் முயற்சி செய்',
          ),
          Sentence(
            sno: 35,
            eng: 'Peel the onion',
            tam: 'வெங்காயத்தை உரி',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 36,
            eng: 'Bunch of keys',
            tam: 'சாவி கொத்து',
          ),
          Sentence(
            sno: 37,
            eng: 'Fight for right',
            tam: 'உரிமைக்காக போராடு',
          ),
          Sentence(
            sno: 38,
            eng: 'Think before do',
            tam: 'செய்வதற்கு முன் யோசி',
          ),
          Sentence(
            sno: 39,
            eng: 'Look who is it?',
            tam: 'யார் என்று பார்?',
          ),
          Sentence(
            sno: 40,
            eng: 'Bring some more',
            tam: 'இன்னும் கொஞ்சம் கொண்டு வா',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 41,
            eng: 'Chop vegetables',
            tam: 'காய்கறிகளை நறுக்கு',
          ),
          Sentence(
            sno: 42,
            eng: 'Full moon day',
            tam: 'முழு நிலவு நாள்',
          ),
          Sentence(
            sno: 43,
            eng: 'Go away',
            tam: 'போய்விடு',
          ),
          Sentence(
            sno: 44,
            eng: 'Help me',
            tam: 'எனக்கு உதவு',
          ),
          Sentence(
            sno: 45,
            eng: 'Give me',
            tam: 'எனக்குக் கொடு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 46,
            eng: 'Get up',
            tam: 'எழு',
          ),
          Sentence(
            sno: 47,
            eng: 'Put on',
            tam: 'போடு',
          ),
          Sentence(
            sno: 48,
            eng: 'Time out',
            tam: 'நேரம் முடிந்தது',
          ),
          Sentence(
            sno: 49,
            eng: 'Take this',
            tam: 'இதை எடு',
          ),
          Sentence(
            sno: 50,
            eng: 'Want more',
            tam: 'இன்னும் வேண்டும்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 51,
            eng: 'Play now',
            tam: 'இப்பொழுது விளையாடு',
          ),
          Sentence(
            sno: 52,
            eng: 'Buy that',
            tam: 'அதை வாங்கு',
          ),
          Sentence(
            sno: 53,
            eng: 'Do work',
            tam: 'வேலை செய்',
          ),
          Sentence(
            sno: 54,
            eng: 'New thing',
            tam: 'புதிய விஷயம்',
          ),
          Sentence(
            sno: 55,
            eng: 'Ask her',
            tam: 'அவளிடம்  கேள்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 56,
            eng: 'Read it',
            tam: 'அதைப் படி',
          ),
          Sentence(
            sno: 57,
            eng: 'Walk away',
            tam: 'விலகிச் செல்',
          ),
          Sentence(
            sno: 58,
            eng: 'Right there',
            tam: 'அங்கேயே',
          ),
          Sentence(
            sno: 59,
            eng: 'Not me',
            tam: 'நான் இல்லை',
          ),
          Sentence(
            sno: 60,
            eng: 'Tell him',
            tam: 'அவனிடம் சொல்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 61,
            eng: 'I can',
            tam: 'என்னால் முடியும்',
          ),
          Sentence(
            sno: 62,
            eng: 'Go on',
            tam: 'தொடர்ந்து செய்',
          ),
          Sentence(
            sno: 63,
            eng: 'Get in',
            tam: 'உள்ளே வா',
          ),
          Sentence(
            sno: 64,
            eng: 'I know',
            tam: 'எனக்குத் தெரியும்.',
          ),
          Sentence(
            sno: 65,
            eng: 'I hate',
            tam: 'நான் வெறுக்கிறேன்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 66,
            eng: 'Get up',
            tam: 'எழுந்திரு',
          ),
          Sentence(
            sno: 67,
            eng: 'Me too',
            tam: 'நானும்',
          ),
          Sentence(
            sno: 68,
            eng: 'Get out',
            tam: 'வெளியே போ',
          ),
          Sentence(
            sno: 69,
            eng: 'Not bad',
            tam: 'பரவாயில்லை',
          ),
          Sentence(
            sno: 70,
            eng: 'I agree',
            tam: 'நான் ஒத்துகொள்கிறேன்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 71,
            eng: 'Meet me',
            tam: 'என்னை சந்தி',
          ),
          Sentence(
            sno: 72,
            eng: 'Take it',
            tam: 'இதை எடு',
          ),
          Sentence(
            sno: 73,
            eng: 'I guess',
            tam: 'நான் நினைக்கிறேன்',
          ),
          Sentence(
            sno: 74,
            eng: 'Go back',
            tam: 'பின்னல் போ',
          ),
          Sentence(
            sno: 75,
            eng: 'Obey it',
            tam: 'கீழ்படிந்து நட',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 76,
            eng: 'Lead me',
            tam: 'என்னை வழிநடத்து',
          ),
          Sentence(
            sno: 77,
            eng: 'Be kind',
            tam: 'அன்பாய் இரு',
          ),
          Sentence(
            sno: 78,
            eng: 'Why so?',
            tam: 'ஏன் அப்படி?',
          ),
          Sentence(
            sno: 79,
            eng: 'Hold on',
            tam: 'நிறுத்து',
          ),
          Sentence(
            sno: 80,
            eng: 'Get off',
            tam: 'இறங்கு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 81,
            eng: 'He says',
            tam: 'அவன் கூறுகிறான்',
          ),
          Sentence(
            sno: 82,
            eng: 'Do come',
            tam: 'அவசியம் வரவும்',
          ),
          Sentence(
            sno: 83,
            eng: 'Bless me',
            tam: 'என்னை வாழ்த்துங்கள்',
          ),
          Sentence(
            sno: 84,
            eng: 'Eat well',
            tam: 'நன்றாகச் சாப்பிடு',
          ),
          Sentence(
            sno: 85,
            eng: 'Go ahead',
            tam: 'முன்னேறி  செல்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 86,
            eng: 'Get down',
            tam: 'கீழே இறங்கு',
          ),
          Sentence(
            sno: 87,
            eng: 'Go there',
            tam: 'அங்கே போ',
          ),
          Sentence(
            sno: 88,
            eng: 'Be ready',
            tam: 'தயாராய் இரு',
          ),
          Sentence(
            sno: 89,
            eng: 'Meet him',
            tam: 'அவனை சந்தி',
          ),
          Sentence(
            sno: 90,
            eng: 'Call him',
            tam: 'அவனைக் கூப்பிடு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 91,
            eng: 'Leave it',
            tam: 'அதை விட்டு விடு',
          ),
          Sentence(
            sno: 92,
            eng: 'No doubt',
            tam: 'சந்தேகமே இல்லை',
          ),
          Sentence(
            sno: 93,
            eng: 'I refuse',
            tam: 'நான் மறுக்கிறேன்',
          ),
          Sentence(
            sno: 94,
            eng: 'You weep',
            tam: 'நீ அழுகிறாய்',
          ),
          Sentence(
            sno: 95,
            eng: 'Come out',
            tam: 'வெளியே வா',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 96,
            eng: 'Find him',
            tam: 'அவனை கண்டு பிடி',
          ),
          Sentence(
            sno: 97,
            eng: 'How far?',
            tam: 'எவ்வளவு தூரம்?',
          ),
          Sentence(
            sno: 98,
            eng: 'Be quiet',
            tam: 'அமைதியாய் இரு',
          ),
          Sentence(
            sno: 99,
            eng: 'Stand up',
            tam: 'எழுந்திரு',
          ),
          Sentence(
            sno: 100,
            eng: 'Put away',
            tam: 'ஒதுக்கு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 101,
            eng: 'Just ago',
            tam: 'சற்று முன்பு',
          ),
          Sentence(
            sno: 102,
            eng: 'I accept',
            tam: 'நான் ஏற்றுக்கொள்கிறேன்',
          ),
          Sentence(
            sno: 103,
            eng: 'Excuse me',
            tam: 'என்னை மன்னியுங்கள்',
          ),
          Sentence(
            sno: 104,
            eng: 'Move back',
            tam: 'பின்னால் நகரு',
          ),
          Sentence(
            sno: 105,
            eng: 'Go to top',
            tam: 'மேலே போ',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 106,
            eng: 'Come here',
            tam: 'இங்கே வா',
          ),
          Sentence(
            sno: 107,
            eng: 'Look here',
            tam: 'இங்கே பார்',
          ),
          Sentence(
            sno: 108,
            eng: 'Let me go',
            tam: 'என்னை போக விடு',
          ),
          Sentence(
            sno: 109,
            eng: 'God Knows',
            tam: 'கடவுளுக்கு தெரியும்',
          ),
          Sentence(
            sno: 110,
            eng: 'I must go',
            tam: 'நான் அவசியம்  போக வேண்டும்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 111,
            eng: 'I owe you',
            tam: 'நான் உங்களுக்கு கடமைப்பட்டிருக்கிறேன்',
          ),
          Sentence(
            sno: 112,
            eng: 'I hope so',
            tam: 'நான் நம்புகிறேன்',
          ),
          Sentence(
            sno: 113,
            eng: 'Let it be',
            tam: 'அது இருக்கட்டும்',
          ),
          Sentence(
            sno: 114,
            eng: 'Let me see',
            tam: 'நான் பார்க்க அனுமதியுங்கள்',
          ),
          Sentence(
            sno: 115,
            eng: 'Come again',
            tam: 'மீண்டும் வாருங்கள்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 116,
            eng: 'I know him',
            tam: 'எனக்கு அவரை தெரியும்',
          ),
          Sentence(
            sno: 117,
            eng: 'Look at me',
            tam: 'என்னைப் பார்',
          ),
          Sentence(
            sno: 118,
            eng: 'Keep quiet',
            tam: 'அமைதியாக இரு',
          ),
          Sentence(
            sno: 119,
            eng: 'Believe me',
            tam: 'என்னை நம்பு',
          ),
          Sentence(
            sno: 120,
            eng: 'It is mine',
            tam: 'அது என்னுடையது',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 121,
            eng: 'You may go',
            tam: 'நீ போகலாம்',
          ),
          Sentence(
            sno: 122,
            eng: 'It is easy',
            tam: 'இது எளிதானது',
          ),
          Sentence(
            sno: 123,
            eng: 'It is torn',
            tam: 'இது கிழிந்துள்ளது',
          ),
          Sentence(
            sno: 124,
            eng: 'Kneel down',
            tam: 'முட்டியிடு',
          ),
          Sentence(
            sno: 125,
            eng: 'Knock down',
            tam: 'இடித்து தள்ளு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 126,
            eng: 'Say loudly',
            tam: 'சப்தமாக சொல்',
          ),
          Sentence(
            sno: 127,
            eng: 'Admire you',
            tam: 'உன்னை ரசிக்கின்றேன்',
          ),
          Sentence(
            sno: 128,
            eng: 'Be patient',
            tam: 'பொறுமையாய் இரு',
          ),
          Sentence(
            sno: 129,
            eng: 'He is sage',
            tam: 'அவர் ஒரு ஞானி',
          ),
          Sentence(
            sno: 130,
            eng: 'Not so bad',
            tam: 'அவ்வளவு மோசமில்லை',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 131,
            eng: 'I think so',
            tam: 'நான் அப்படிதான் நினைக்கிறேன்',
          ),
          Sentence(
            sno: 132,
            eng: 'Is it far?',
            tam: 'அது தூரமா?',
          ),
          Sentence(
            sno: 133,
            eng: 'Is it near?',
            tam: 'அது அருகில் உள்ளதா?',
          ),
          Sentence(
            sno: 134,
            eng: 'How is he?',
            tam: 'அவன் எப்படி இருக்கிறான்?',
          ),
          Sentence(
            sno: 135,
            eng: 'Wake me up',
            tam: 'என்னை எழுப்பு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 136,
            eng: 'Remaind me',
            tam: 'எனக்கு நினைவூட்டு',
          ),
          Sentence(
            sno: 137,
            eng: 'Then what?',
            tam: 'பிறகு என்ன?',
          ),
          Sentence(
            sno: 138,
            eng: 'About what?',
            tam: 'எதைப்பற்றி?',
          ),
          Sentence(
            sno: 139,
            eng: 'With whom?',
            tam: 'யாருடன்?',
          ),
          Sentence(
            sno: 140,
            eng: 'Do you go?',
            tam: 'நீங்கள் போகிறீர்களா?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 141,
            eng: 'I want some',
            tam: 'எனக்கு கொஞ்சம் தேவை',
          ),
          Sentence(
            sno: 142,
            eng: 'What next?',
            tam: 'அடுத்து என்ன ?',
          ),
          Sentence(
            sno: 143,
            eng: 'What is it?',
            tam: 'அது என்ன?',
          ),
          Sentence(
            sno: 144,
            eng: 'Console him',
            tam: 'அவனுக்கு ஆறுதல் கூறு',
          ),
          Sentence(
            sno: 145,
            eng: 'Go with him',
            tam: 'அவனுடன் போ',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 146,
            eng: 'Ask the way',
            tam: 'வழி கேள்',
          ),
          Sentence(
            sno: 147,
            eng: 'What to do?',
            tam: 'என்ன செய்ய?',
          ),
          Sentence(
            sno: 148,
            eng: 'Am I right?',
            tam: 'நான் சொல்வது சரிதானே?',
          ),
          Sentence(
            sno: 149,
            eng: 'I fell down',
            tam: 'நான் கீழே விழுந்துவிட்டேன்',
          ),
          Sentence(
            sno: 150,
            eng: 'Let me know',
            tam: 'எனக்கு தெரியப்படுத்துங்கள்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 151,
            eng: 'Is it true?',
            tam: 'அது உண்மையா?',
          ),
          Sentence(
            sno: 152,
            eng: 'It seems so',
            tam: 'அப்படித்தான் தோன்றுகிறது',
          ),
          Sentence(
            sno: 153,
            eng: 'Where is he?',
            tam: 'அவர் எங்கே?',
          ),
          Sentence(
            sno: 154,
            eng: 'I can do it',
            tam: 'நான் அதைச் செய்ய முடியும்',
          ),
          Sentence(
            sno: 155,
            eng: 'Wake her up',
            tam: 'அவளை எழுப்பு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 156,
            eng: 'It is yours',
            tam: 'அது உங்களுடையது',
          ),
          Sentence(
            sno: 157,
            eng: 'As you like',
            tam: 'நீங்கள் விரும்பியபடி',
          ),
          Sentence(
            sno: 158,
            eng: 'Let me work',
            tam: 'என்னை வேலை செய்யவிடு',
          ),
          Sentence(
            sno: 159,
            eng: 'Go yourself',
            tam: 'நீயாகவே செல்',
          ),
          Sentence(
            sno: 160,
            eng: 'Let it pass',
            tam: 'அது போகட்டும்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 161,
            eng: 'Are you ok?',
            tam: 'நீங்கள் நலமா?',
          ),
          Sentence(
            sno: 162,
            eng: 'I have to go',
            tam: 'நான் போக வேண்டும்',
          ),
          Sentence(
            sno: 163,
            eng: 'Fold the mat',
            tam: 'பாயை மடி',
          ),
          Sentence(
            sno: 164,
            eng: 'That is easy',
            tam: 'அது எளிது',
          ),
          Sentence(
            sno: 165,
            eng: 'Come forward',
            tam: 'முன்னால் வாருங்கள்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 166,
            eng: 'It is a rumour',
            tam: 'அது ஒரு வதந்தி',
          ),
          Sentence(
            sno: 167,
            eng: 'Stop worrying',
            tam: 'கவலைப்படுவதை நிறுத்து',
          ),
          Sentence(
            sno: 168,
            eng: 'We leave now',
            tam: 'நாங்கள் இப்போது புறப்படுகிறோம்',
          ),
          Sentence(
            sno: 169,
            eng: 'She threw it',
            tam: 'அவள் அதை எறிந்தாள்',
          ),
          Sentence(
            sno: 170,
            eng: 'What a shame',
            tam: 'வெட்கக் கேடு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 171,
            eng: 'He absconded',
            tam: 'அவன் தலைமறைவாகிவிட்டான்',
          ),
          Sentence(
            sno: 172,
            eng: 'Come with me',
            tam: 'என்னுடன் வா',
          ),
          Sentence(
            sno: 173,
            eng: 'I can manage',
            tam: 'என்னால் சமாளிக்க முடியும்',
          ),
          Sentence(
            sno: 174,
            eng: 'He is a dumb',
            tam: 'அவன் ஒரு ஊமை',
          ),
          Sentence(
            sno: 175,
            eng: 'Do not laugh',
            tam: 'சிரிக்காதே',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 176,
            eng: 'Do your duty',
            tam: 'உன் கடமையை செய்',
          ),
          Sentence(
            sno: 177,
            eng: 'It is not so',
            tam: 'அது அப்படி அல்ல',
          ),
          Sentence(
            sno: 178,
            eng: 'Do not feel',
            tam: 'வருத்தப்படாதே',
          ),
          Sentence(
            sno: 179,
            eng: 'Getting late',
            tam: 'நேரமாகிறது',
          ),
          Sentence(
            sno: 180,
            eng: 'Swear by god',
            tam: 'கடவுள் மேல் ஆணை',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 181,
            eng: 'Keep it safe',
            tam: 'பத்திரமாக வைத்திரு',
          ),
          Sentence(
            sno: 182,
            eng: 'He feels shy',
            tam: 'அவர் வெட்கப்படுகிறார்',
          ),
          Sentence(
            sno: 183,
            eng: 'By all means',
            tam: 'எல்லா வகையிலும்',
          ),
          Sentence(
            sno: 184,
            eng: 'Let him talk',
            tam: 'அவனை பேசவிடு',
          ),
          Sentence(
            sno: 185,
            eng: 'I believe so',
            tam: 'நான் அப்படித்தான் நம்புகிறேன்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 186,
            eng: 'Is it yours?',
            tam: 'இது உங்களுடையதா?',
          ),
          Sentence(
            sno: 187,
            eng: 'Do you know?',
            tam: 'உங்களுக்குத் தெரியுமா?',
          ),
          Sentence(
            sno: 188,
            eng: 'What a pity!',
            tam: 'ரொம்ப பாவம்!',
          ),
          Sentence(
            sno: 189,
            eng: 'Do not delay',
            tam: 'தாமதிக்காதே',
          ),
          Sentence(
            sno: 190,
            eng: 'It thundered',
            tam: 'இடி இடித்தது',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 191,
            eng: 'Did you come?',
            tam: 'நீ வந்தாயா?',
          ),
          Sentence(
            sno: 192,
            eng: 'Nothing else',
            tam: 'வேறொன்றுமில்லை',
          ),
          Sentence(
            sno: 193,
            eng: 'Just arrived',
            tam: 'இப்பொழுது தான் வந்தது',
          ),
          Sentence(
            sno: 194,
            eng: 'I am 21 today',
            tam: 'இன்று எனக்கு 21 வயதாகிறது',
          ),
          Sentence(
            sno: 195,
            eng: 'I am not sure',
            tam: 'எனக்கு உறுதியாக தெரியவில்லை',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 196,
            eng: 'See you later',
            tam: 'பிறகு பார்க்கலாம்',
          ),
          Sentence(
            sno: 197,
            eng: 'It looks good',
            tam: 'இது நன்றாக இருக்கிறது',
          ),
          Sentence(
            sno: 198,
            eng: 'Give it to me',
            tam: 'அதை என்னிடம் கொடு',
          ),
          Sentence(
            sno: 199,
            eng: 'It will be so',
            tam: 'அப்படிதான் இருக்கும்',
          ),
          Sentence(
            sno: 200,
            eng: 'Come what may',
            tam: 'வருவது வரட்டும்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 201,
            eng: 'Do not forget',
            tam: 'மறந்து விடாதே',
          ),
          Sentence(
            sno: 202,
            eng: 'He is a brute',
            tam: 'அவன் ஒரு காட்டுமிராண்டி',
          ),
          Sentence(
            sno: 203,
            eng: 'Is it enough?',
            tam: 'இது போதுமா?',
          ),
          Sentence(
            sno: 204,
            eng: 'It is enough',
            tam: 'இது போதும்',
          ),
          Sentence(
            sno: 205,
            eng: 'You are unfit',
            tam: 'நீ தகுதி இல்லாதவன்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 206,
            eng: 'I feel hungry',
            tam: 'எனக்கு பசிக்கிறது',
          ),
          Sentence(
            sno: 207,
            eng: 'Show the way',
            tam: 'வழியைக் காட்டு',
          ),
          Sentence(
            sno: 208,
            eng: 'Do not interfere',
            tam: 'தலையிட வேண்டாம்',
          ),
          Sentence(
            sno: 209,
            eng: 'Till tomorrow',
            tam: 'நாளை வரை',
          ),
          Sentence(
            sno: 210,
            eng: 'Be very alert',
            tam: 'மிகவும் கவனமாக இரு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 211,
            eng: 'Who are they?',
            tam: 'அவர்கள் யார்?',
          ),
          Sentence(
            sno: 212,
            eng: 'Please repeat',
            tam: 'திரும்பச் சொல்லுங்கள்',
          ),
          Sentence(
            sno: 213,
            eng: 'At what time?',
            tam: 'எத்தனை மணிக்கு?',
          ),
          Sentence(
            sno: 214,
            eng: 'That and this',
            tam: 'அதுவும் இதுவும்',
          ),
          Sentence(
            sno: 215,
            eng: 'Anything else',
            tam: 'வேறு ஏதாவது',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 216,
            eng: 'They avoid her',
            tam: 'அவர்கள் அவளைத் தவிர்க்கிறார்கள்',
          ),
          Sentence(
            sno: 217,
            eng: 'Bring the food',
            tam: 'சாப்பாடு கொண்டு வா',
          ),
          Sentence(
            sno: 218,
            eng: 'He is innocent',
            tam: 'அவர் அப்பாவி',
          ),
          Sentence(
            sno: 219,
            eng: 'Lend me a hand',
            tam: 'கொஞ்சம் கைகொடு',
          ),
          Sentence(
            sno: 220,
            eng: 'Let us move on',
            tam: 'நாம் செல்லலாம்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 221,
            eng: 'Leave me alone',
            tam: 'என்னைத் தனியே விட்டு விடு',
          ),
          Sentence(
            sno: 222,
            eng: 'It is my order',
            tam: 'இது என் உத்தரவு',
          ),
          Sentence(
            sno: 223,
            eng: 'I have no time',
            tam: 'எனக்கு நேரமில்லை',
          ),
          Sentence(
            sno: 224,
            eng: 'Do as you like',
            tam: 'நீ விரும்வது போலவே செய்',
          ),
          Sentence(
            sno: 225,
            eng: 'Anything else?',
            tam: 'வேறு எதாவது?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 226,
            eng: 'It is too much',
            tam: 'இது மிகவும் அதிகம்',
          ),
          Sentence(
            sno: 227,
            eng: 'He is a coward',
            tam: 'அவன் ஒரு கோழை',
          ),
          Sentence(
            sno: 228,
            eng: 'What is wrong?',
            tam: 'என்ன தவறு?',
          ),
          Sentence(
            sno: 229,
            eng: 'It is too late',
            tam: 'காலம் கடந்து விட்டது',
          ),
          Sentence(
            sno: 230,
            eng: 'Say once again',
            tam: 'மறுபடியும் சொல்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 231,
            eng: 'Shall I leave?',
            tam: 'நான் போகலாமா?',
          ),
          Sentence(
            sno: 232,
            eng: 'How old is he?',
            tam: 'அவனுக்கு வயது என்ன?',
          ),
          Sentence(
            sno: 233,
            eng: 'She is eight',
            tam: 'அவனுக்கு எட்டு வயது',
          ),
          Sentence(
            sno: 234,
            eng: 'Whose is this?',
            tam: 'இது யாருடையது?',
          ),
          Sentence(
            sno: 235,
            eng: 'He is a convict',
            tam: 'அவர் ஒரு குற்றவாளி',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 236,
            eng: 'I know nothing',
            tam: 'எனக்கு எதுவும் தெரியாது',
          ),
          Sentence(
            sno: 237,
            eng: 'I have nothing',
            tam: 'என்னிடம் ஒன்றும் இல்லை',
          ),
          Sentence(
            sno: 238,
            eng: 'Come back soon',
            tam: 'விரைவில் திரும்பி வா',
          ),
          Sentence(
            sno: 239,
            eng: 'Note this down',
            tam: 'இதைக் குறித்துக்கொள்',
          ),
          Sentence(
            sno: 240,
            eng: 'Just behind me',
            tam: 'எனக்குப் பின்னால்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 241,
            eng: 'On which date?',
            tam: 'எத்தனாம் தேதி?',
          ),
          Sentence(
            sno: 242,
            eng: 'How much cost?',
            tam: 'எவ்வளவு விலை?',
          ),
          Sentence(
            sno: 243,
            eng: 'Hold on please',
            tam: 'தயவு செய்து பிடித்துக்கொள்',
          ),
          Sentence(
            sno: 244,
            eng: 'Regarding what?',
            tam: 'எதை பற்றி?/எது சம்பந்தமாக?',
          ),
          Sentence(
            sno: 245,
            eng: 'Back and forth',
            tam: 'முன்னும் பின்னுமாக',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 246,
            eng: 'I have no money',
            tam: 'என்னிடம் பணம் இல்லை',
          ),
          Sentence(
            sno: 247,
            eng: 'Don\'t be silly',
            tam: 'முட்டாள்தனமாக பேசாதே',
          ),
          Sentence(
            sno: 248,
            eng: 'I remember that',
            tam: 'எனக்கு அது நினைவிருக்கிறது',
          ),
          Sentence(
            sno: 249,
            eng: 'Don\'t hesitate',
            tam: 'தயங்க வேண்டாம்',
          ),
          Sentence(
            sno: 250,
            eng: 'Get up',
            tam: 'எழு',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 251,
            eng: 'It is not me',
            tam: 'அது நான் அல்ல',
          ),
          Sentence(
            sno: 252,
            eng: 'Wash the face',
            tam: 'முகத்தை கழுவு',
          ),
          Sentence(
            sno: 253,
            eng: 'Go upstairs',
            tam: 'மாடிக்குச் செல்',
          ),
          Sentence(
            sno: 254,
            eng: 'Keep in touch!',
            tam: 'தொடர்பில் இரு',
          ),
        ],
      ),
    );
  }
}
