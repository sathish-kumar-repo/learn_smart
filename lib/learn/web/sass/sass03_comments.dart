import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassComments extends StatefulWidget {
  const SassComments({Key? key}) : super(key: key);

  @override
  State<SassComments> createState() => _SassCommentsState();
}

class _SassCommentsState extends State<SassComments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('SASS Commands and Interpolation'),
          const H3('Commands'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const H3('Interpolation'),
          Code(title: 'main.scss', code: code2, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code3, type: 'css'),
        ],
      ),
    );
  }
}

var code3 = '''
/* this is interpolation expression*/
/* this is interpolation 4*/
''';
var code2 = '''
/* this is interpolation #{expression}*/
/* this is interpolation #{2+2}*/
''';
var code1 = '''
// SASS Command only display in Sass file

/* This command is visible in CSS file but if css file is compressed, this is command is not visible*/

/* !This command is also visible in compressed file because it starts with (!)*/

//--------------------------------------------------------

/*It shows in CSS file*/

h1 /*It not shows in CSS file*/ {
  color: red;
  /*It shows in CSS file*/
}

''';
