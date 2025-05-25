import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassExtend extends StatefulWidget {
  const SassExtend({Key? key}) : super(key: key);

  @override
  State<SassExtend> createState() => _SassExtendState();
}

class _SassExtendState extends State<SassExtend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('@functions'),
          Code(title: '_alert.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code2, type: 'css'),
          const Note('Follow the folder Structure'),
          const H3('For more eg'),
          const Link('https://sass-lang.com/documentation/at-rules/extend/'),
        ],
      ),
    );
  }
}

var code2 = '''
.alert, .alert-success, .alert-primary {
  padding: 20px;
  border-radius: 10px;
}
.alert-primary {
  background-color: pink;
  border-color: lightcoral;
}
.alert-success {
  background-color: violet;
  border-color: lavender;
}
''';
var code1 = '''
.alert {
  padding: 20px;
  border-radius: 10px;

  &-primary {
    @extend .alert;
    background-color: pink;
    border-color: lightcoral;
  }

  &-success {
    @extend .alert;
    background-color: violet;
    border-color: lavender;
  }
}
''';
