import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassMixinsAndInclude extends StatefulWidget {
  const SassMixinsAndInclude({Key? key}) : super(key: key);

  @override
  State<SassMixinsAndInclude> createState() => _SassMixinsAndIncludeState();
}

class _SassMixinsAndIncludeState extends State<SassMixinsAndInclude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('@mixin and @include'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code2, type: 'css'),
          const Note('Follow the folder Structure'),
          const H3('For more eg'),
          const Link('https://sass-lang.com/documentation/at-rules/mixin/'),
        ],
      ),
    );
  }
}

var code2 = '''
.avatar {
  width: 100px;
  height: 100px;
  border-radius: 4px;
}
''';
var code1 = '''
@mixin square(\$size, \$radius: 0) {
  width: \$size;
  height: \$size;

  @if \$radius != 0 {
    border-radius: \$radius;
  }
}

.avatar {
  @include square(100px, \$radius: 4px);
}
''';
