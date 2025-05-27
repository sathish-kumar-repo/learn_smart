import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassNestingStyle extends StatefulWidget {
  const SassNestingStyle({Key? key}) : super(key: key);

  @override
  State<SassNestingStyle> createState() => _SassNestingStyleState();
}

class _SassNestingStyleState extends State<SassNestingStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Nesting Styles'),
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
nav {
  background-color: #222;
  padding: 10px;
}
nav a {
  text-decoration: none;
  display: inline-block;
  padding: 5px 10px;
  color: #fff;
}

p {
  line-height: 30px;
  text-indent: 30px;
}
p a {
  text-decoration: none;
  color: tomato;
}

.navbar {
  background-color: #222;
  padding: 10px;
}
.navbar__anchor {
  text-decoration: none;
  display: inline-block;
  padding: 5px 10px;
  color: #fff;
}
''';
var code1 = '''
nav {
  background-color: #222;
  padding: 10px;
  a {
    text-decoration: none;
    display: inline-block;
    padding: 5px 10px;
    color: #fff;
  }
}

p {
  line-height: 30px;
  text-indent: 30px;
  a {
    text-decoration: none;
    color: tomato;
  }
}

// bem concept
.navbar {
  background-color: #222;
  padding: 10px;
  &__anchor {
    text-decoration: none;
    display: inline-block;
    padding: 5px 10px;
    color: #fff;
  }
}
''';
