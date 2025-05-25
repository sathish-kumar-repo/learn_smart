import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassVariables extends StatefulWidget {
  const SassVariables({Key? key}) : super(key: key);

  @override
  State<SassVariables> createState() => _SassVariablesState();
}

class _SassVariablesState extends State<SassVariables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Variables'),
          const H3('How to use'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code2, type: 'css'),
          const H3('Local and Global'),
          Code(title: 'main.scss', code: code3, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code4, type: 'css'),
          const H3('Global keyword'),
          Code(title: 'main.scss', code: code5, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code6, type: 'css'),
          const H3('Overwriting the Variable'),
          Code(title: 'main.scss', code: code7, type: 'scss'),
          const H4('Output'),
          Code(title: 'main.css', code: code8, type: 'css'),
        ],
      ),
    );
  }
}

var code8 = '''
body {
  font-family: "Roboto", sans-serif;
}

h2 {
  color: #3498db;
}

.demo {
  color: red;
}
.demo p {
  color: red;
}

p {
  color: green;
}
''';
var code7 = '''
// Variable

// Global Scope
\$primary-color: #3498db;
\$font-family: "Roboto", sans-serif;

body {
  font-family: \$font-family;
}

h2 {
  color: \$primary-color;
}

\$primary-color: red;

.demo {
  // local Scope
  color: \$primary-color;
  p {
    color: \$primary-color;
  }
}

p {
  \$primary-color: green;
  color: \$primary-color;
}
''';
var code6 = '''
body {
  font-family: "Roboto", sans-serif;
}

h2 {
  color: #3498db;
}

.demo {
  color: red;
}
.demo p {
  color: red;
}

p {
  color: red;
}
''';
var code5 = '''
// Variable

// Global Scope
\$primary-color: #3498db;
\$font-family: "Roboto", sans-serif;

body {
  font-family: \$font-family;
}

h2 {
  color: \$primary-color;
}

.demo {
  // local Scope
  \$primary-color: red !global;
  color: \$primary-color;
  p {
    color: \$primary-color;
  }
}

p {
  color: \$primary-color;
}
''';
var code4 = '''
body {
  font-family: "Roboto", sans-serif;
}

h2 {
  color: #3498db;
}

.demo {
  color: red;
}
.demo p {
  color: red;
}
''';
var code3 = '''
// Variable

// Global Scope
\$primary-color: #3498db;
\$font-family: "Roboto", sans-serif;

body {
  font-family: \$font-family;
}

h2 {
  color: \$primary-color;
}

.demo {
  // local Scope
  \$primary-color: red;
  color: \$primary-color;
  p {
    color: \$primary-color;
  }
}

''';
var code2 = '''
body {
  font-family: "Roboto", sans-serif;
}

h2 {
  color: #3498db;
}
''';
var code1 = '''
// Variable
\$primary-color: #3498db;
\$font-family: "Roboto", sans-serif;

body {
  font-family: \$font-family;
}

h2 {
  color: \$primary-color;
}
''';
