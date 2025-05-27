import 'package:flutter/material.dart';
import 'package:learn_smart/learn/english/topics/englishTopics.dart';
import 'package:learn_smart/widgets/my_page.dart';
import 'package:learn_smart/widgets/my_drawer.dart';
import 'package:learn_smart/widgets/text_widget.dart';
import 'package:learn_smart/widgets/app_bar.dart';

class DailySentenceInLife extends StatefulWidget {
  const DailySentenceInLife({Key? key}) : super(key: key);

  @override
  State<DailySentenceInLife> createState() => _DailySentenceInLifeState();
}

class _DailySentenceInLifeState extends State<DailySentenceInLife> {
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
          H1('Daily Sentence In Life'),
          Sentence(
            sno: 1,
            eng: 'Does he work with you?',
            tam: 'அவர் உங்களுடன் வேலை செய்கிறாரா?',
          ),
          Sentence(
            sno: 2,
            eng: 'Does she have a car?',
            tam: 'அவளிடம் கார் இருக்கிறதா?',
          ),
          Sentence(
            sno: 3,
            eng: 'Does it snow in winter?',
            tam: 'குளிர்காலத்தில் பனி உண்டா?',
          ),
          Sentence(
            sno: 4,
            eng: 'Does your dog live outside or in the house?',
            tam: 'உங்கள் நாய் வெளியே அல்லது வீட்டில் வசிக்கிறதா?',
          ),
          Sentence(
            sno: 5,
            eng: 'Does your sister always talk so much on the phone?',
            tam: 'உங்கள் சகோதரி எப்போதும் தொலைபேசியில் இவ்வளவு பேசுகிறாரா?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 6,
            eng: 'Why does she always scream like that?',
            tam: 'அவள் ஏன் எப்போதும் அப்படி கத்துகிறாள்?',
          ),
          Sentence(
            sno: 7,
            eng: 'Do it for me',
            tam: 'எனக்காக செய்',
          ),
          Sentence(
            sno: 8,
            eng: 'I am for that',
            tam: 'அதற்காக நான்',
          ),
          Sentence(
            sno: 9,
            eng: 'Is it for me?',
            tam: 'இது எனக்கானதா?',
          ),
          Sentence(
            sno: 10,
            eng: 'What\'s it for?',
            tam: 'இது எதற்காக?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 11,
            eng: 'I came for you',
            tam: 'நான் உங்களுக்காக வந்தேன்',
          ),
          Sentence(
            sno: 12,
            eng: 'Is it for her?',
            tam: 'அது அவளுக்கு தானா?',
          ),
          Sentence(
            sno: 13,
            eng: 'That\'s for you',
            tam: 'அது உங்களுக்காக',
          ),
          Sentence(
            sno: 14,
            eng: 'I paid for them',
            tam: 'நான் அவர்களுக்கு பணம் கொடுத்தேன்',
          ),
          Sentence(
            sno: 15,
            eng: 'So why don\'t you do the ordering for tomorrow as usual?',
            tam: 'எனவே வழக்கம்போல நாளைக்கான ஆர்டரை ஏன் செய்யக்கூடாது?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 16,
            eng: 'I\'m only about a year older than Janaki',
            tam: 'நான் ஜானகியை விட ஒரு வருடம் மட்டுமே மூத்தவன்',
          ),
          Sentence(
            sno: 17,
            eng: 'It\'s exquisite.',
            tam: 'இது நேர்த்தியானது.',
          ),
          Sentence(
            sno: 18,
            eng: 'Where did you get this, Pavithara?',
            tam: 'பவித்ரா, இது எங்கிருந்து கிடைத்தது?',
          ),
          Sentence(
            sno: 19,
            eng: 'Do you like this fellow?',
            tam:
                'இந்த நபரை நீங்கள் விரும்புகிறீர்களா? (அதாவது பொதுவாக பிடித்திருக்கா என்று கேட்பது)',
          ),
          Sentence(
            sno: 20,
            eng: 'You should not be surprised by that',
            tam: 'அதைக் கண்டு நீங்கள் ஆச்சரியப்படக்கூடாது',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 21,
            eng: 'I think I can honestly say it',
            tam: 'நான் அதை நேர்மையாக சொல்ல முடியும் என்று நினைக்கிறேன்',
          ),
          Sentence(
            sno: 22,
            eng: 'He hadn\'t seen Lakshmi was there too.',
            tam: 'லட்சுமியும் அங்கே இருப்பதை அவர் பார்த்ததில்லை.',
          ),
          Sentence(
            sno: 23,
            eng: 'She looked as if nothing had happened',
            tam: 'எதுவும் நடக்காதது போல் அவள் பார்த்தாள்',
          ),
          Sentence(
            sno: 24,
            eng: 'I didn\'t know they would come back',
            tam: 'அவர்கள் திரும்பி வருவார்கள் என்று எனக்குத் தெரியவில்லை.',
          ),
          Sentence(
            sno: 25,
            eng: 'I don\'t know why I was afraid of.',
            tam: 'நான் ஏன் பயந்தேன் என்று எனக்குத் தெரியவில்லை.',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 26,
            eng: 'That\'s where I deserve to be',
            tam: 'அங்குதான் நான் இருக்க தகுதியானவன்',
          ),
          Sentence(
            sno: 27,
            eng: 'How can I make amends?',
            tam: 'நான் எப்படி பரிகாரம் செய்யலாம்?',
          ),
          Sentence(
            sno: 28,
            eng: 'Don\'t get too close to her',
            tam: 'அவளுடன் ரொம்ப நெருங்க வேண்டாம்',
          ),
          Sentence(
            sno: 29,
            eng: 'Do I ask too many questions?',
            tam: 'நான் பல கேள்விகளைக் கேட்கிறேனா?',
          ),
          Sentence(
            sno: 30,
            eng: 'Not at all',
            tam: 'இல்லவே இல்லை',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 31,
            eng: 'She didn\'t want to go as far as this.',
            tam: 'அவள் இவ்வளவு தூரம் செல்ல விரும்பவில்லை',
          ),
          Sentence(
            sno: 32,
            eng: 'It\'s time to take decision',
            tam: 'முடிவெடுக்கும் நேரம் இது',
          ),
          Sentence(
            sno: 33,
            eng: 'I can assure you he will',
            tam: 'அவர் செய்வார் என்று நான் உங்களுக்கு உறுதியளிக்கிறேன்',
          ),
          Sentence(
            sno: 34,
            eng: 'What makes you so confident?',
            tam: 'உங்களுக்கு அவ்வளவு நம்பிக்கையூட்டுவது எது?',
          ),
          Sentence(
            sno: 35,
            eng: 'Haven\'t you told Chitra yet?',
            tam: 'நீங்கள் இன்னும் சித்ராவிடம் சொல்லவில்லையா?',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 36,
            eng: 'He always has been in the past',
            tam: 'அவர் எப்போதும் கடந்த காலத்தில் இருப்பார்',
          ),
          Sentence(
            sno: 37,
            eng: 'May I come as well?',
            tam: 'அத்துடன் நானும் வரலாமா?',
          ),
          Sentence(
            sno: 38,
            eng: 'How can I be of assistance',
            tam: 'நான் எவ்வாறு உதவ முடியும்',
          ),
          Sentence(
            sno: 39,
            eng: 'It may take a few days',
            tam: 'இதற்கு சில நாட்கள் ஆகலாம்',
          ),
          Sentence(
            sno: 40,
            eng: 'You were magnificent',
            tam: 'நீங்கள் அற்புதமாக இருந்தீர்கள்',
          ),
          SizedBox(height: 50),
          Sentence(
            sno: 41,
            eng: 'You know what?',
            tam: 'உனக்கு என்னவென்று தெரியுமா?',
          ),
          Sentence(
            sno: 42,
            eng: 'Why didn\'t we go direct to him in the first?',
            tam: 'முதலில் நாம் ஏன் அவரிடம் நேரடியாகச் செல்லவில்லை?',
          ),
          Sentence(
            sno: 43,
            eng: 'Why didn\'t you tell me earlier?',
            tam: 'ஏன் முன்பே என்னிடம் சொல்லவில்லை?',
          ),
          Sentence(
            sno: 44,
            eng: 'I can\'t be expected to do that',
            tam: 'நான் அதை செய்வேன் என்று எதிர்பார்க்க முடியாது',
          ),
          Sentence(
            sno: 45,
            eng: 'I\'ve been so blind as well as stupid.',
            tam: 'நான் மிகவும் குருடனாகவும் முட்டாளாகவும் இருந்தேன்.',
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
