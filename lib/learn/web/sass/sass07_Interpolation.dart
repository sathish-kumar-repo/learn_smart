import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassInterpolation extends StatefulWidget {
  const SassInterpolation({Key? key}) : super(key: key);

  @override
  State<SassInterpolation> createState() => _SassInterpolationState();
}

class _SassInterpolationState extends State<SassInterpolation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Interpolation'),
          const P(
              'Interpolation can be used almost anywhere in a Sass stylesheet to embed the result of a SassScript expression into a chunk of CSS. Just wrap an expression in #{} in any of the following places:'),
          const Link('https://sass-lang.com/documentation/interpolation/'),
          const H3('Source Code'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code2, type: 'css'),
        ],
      ),
    );
  }
}

var code2 = '''
.navbar {
  background-color: #ffff03;
  padding: 10px;
}
''';
var code1 = '''
\$color: #fff;
\$app-color: #{\$color} + f03;
.navbar {
  background-color: \$app-color;
  padding: 10px;
}
''';
