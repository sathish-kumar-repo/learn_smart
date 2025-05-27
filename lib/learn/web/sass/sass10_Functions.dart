import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassFunctions extends StatefulWidget {
  const SassFunctions({Key? key}) : super(key: key);

  @override
  State<SassFunctions> createState() => _SassFunctionsState();
}

class _SassFunctionsState extends State<SassFunctions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('@functions'),
          Code(title: '_functions.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.scss', code: code2, type: 'scss'),
          const Note('Follow the folder Structure'),
          const H3('For more eg'),
          const Link('https://sass-lang.com/documentation/at-rules/function/'),
        ],
      ),
    );
  }
}

var code2 = '''
@use "abstracts" as *;
h1 {
  font-family: \$font-family;
  background-color: brand-color("accent");
  padding: 10px;
}
''';
var code1 = '''
@use "variables" as *;
@function brand-color(\$variant: "primary") {
  @return map-get(\$theme-colors, \$variant);
}
''';
