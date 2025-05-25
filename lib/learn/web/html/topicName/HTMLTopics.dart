import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/web/html/01_Basic_Layout.dart';
import 'package:learn_smart/learn/web/html/02_Heading.dart';
import 'package:learn_smart/learn/web/html/03_Text_Formating.dart';
import 'package:learn_smart/learn/web/html/04_Font.dart';
import 'package:learn_smart/learn/web/html/05_Image.dart';
import 'package:learn_smart/learn/web/html/06_Table.dart';
import 'package:learn_smart/learn/web/html/07_list.dart';

List<Topics> hTMLTopics = [
  Topics('Basic Layout', const BasicLayoutHTMl(), 'HTML'),
  Topics('Heading Tag', const HeadingTagHTMl(), 'HTML'),
  Topics('Text Formatting Tag', const TextFormattingTagHTMl(), 'HTML'),
  Topics('Font Tag', const FontTagHTMl(), 'HTML'),
  Topics('Image Tag', const ImageTagHTMl(), 'HTML'),
  Topics('Table Tag', const TableTagHTMl(), 'HTML'),
  Topics('List Tag', const ListTagHTMl(), 'HTML'),
  // Topics('intro', const AnimationIntro(), 'HTML'),
];
