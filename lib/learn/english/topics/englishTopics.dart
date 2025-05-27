import 'package:learn_smart/learn/english/e1_self_introduction.dart';
import 'package:learn_smart/learn/english/e2_introduce_my_friend.dart';
import 'package:learn_smart/learn/english/e4_use_mind.dart';
import 'package:learn_smart/learn/english/e5_answer_to_someone.dart';
import 'package:learn_smart/learn/english/e6_basic_english_sentence.dart';
import 'package:learn_smart/learn/english/e7_dialy_use_sentence_in_life.dart';
import 'package:learn_smart/widgets/code_pro.dart';

import '../e8_dailY_use_english_sentence.dart';

List<Topics> englishTopics = [
  Topics('Self Introduction', const SelfIntroduction(), 'Basic English'),
  Topics('Introduce My Friend', const IntroduceMyFriend(), 'Basic English'),
  Topics('Use Mind Sentence', const MindSentence(), 'Basic English'),
  Topics('Answer to Someone', const AnswerSentence(), 'Basic English'),
  Topics(
      'Basic English Sentence', const BasicEnglishSentence(), 'Basic English'),
  Topics(
      'Daily Sentence in Life', const DailySentenceInLife(), 'Basic English'),
  Topics('Daily Use English Sentence', const DailyUseEnglishSentence(),
      'Basic English'),
];
