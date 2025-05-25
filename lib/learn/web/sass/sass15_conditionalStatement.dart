import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassConditionalStatement extends StatefulWidget {
  const SassConditionalStatement({Key? key}) : super(key: key);

  @override
  State<SassConditionalStatement> createState() =>
      _SassConditionalStatementState();
}

class _SassConditionalStatementState extends State<SassConditionalStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('@if and @else'),
          Code(title: '_mixin.scss', code: code1, type: 'scss'),
          Code(title: 'main.scss', code: code2, type: 'scss'),
          Code(title: 'main.css', code: code3, type: 'css'),
          const Link(
              'https://sass-lang.com/documentation/at-rules/control/if/'),
          const Note('Follow the folder Structure')
        ],
      ),
    );
  }
}

var code3 = '''
/*if*/
.square-av {
  width: 100px;
  height: 100px;
}

.circle-av {
  width: 100px;
  height: 100px;
  border-radius: 50px;
}

/*if-else*/
.banner {
  background-color: #f2ece4;
  color: #036;
}
body.dark .banner {
  background-color: #6b717f;
  color: #d2e1dd;
}

/*else-if*/
.next {
  height: 0;
  width: 0;
  border-color: transparent;
  border-style: solid;
  border-width: 2.5px;
  border-left-color: black;
}
''';
var code2 = '''
/* if*/
.square-av {
  @include avatar(100px, \$circle: false);
}
.circle-av {
  @include avatar(100px, \$circle: true);
}

/*if-else*/
.banner {
  @include theme-colors(\$light-theme: true);
  body.dark & {
    @include theme-colors(\$light-theme: false);
  }
}

/*else-if*/
.next {
  @include triangle(5px, black, right);
}
''';
var code1 = '''
@use "sass:math";
// if
@mixin avatar(\$size, \$circle: false) {
  width: \$size;
  height: \$size;

  @if \$circle {
    border-radius: math.div(\$size, 2);
  }
}

// if-else
\$light-background: #f2ece4;
\$light-  #036;
\$dark-background: #6b717f;
\$dark-  #d2e1dd;

@mixin theme-colors(\$light-theme: true) {
  @if \$light-theme {
    background-color: \$light-background;
    color: \$light-text;
  } @else {
    background-color: \$dark-background;
    color: \$dark-text;
  }
}

// else-if
@mixin triangle(\$size, \$color, \$direction) {
  height: 0;
  width: 0;

  border-color: transparent;
  border-style: solid;
  border-width: math.div(\$size, 2);

  @if \$direction == up {
    border-bottom-color: \$color;
  } @else if \$direction == right {
    border-left-color: \$color;
  } @else if \$direction == down {
    border-top-color: \$color;
  } @else if \$direction == left {
    border-right-color: \$color;
  } @else {
    @error "Unknown direction #{\$direction}.";
  }
}
''';
