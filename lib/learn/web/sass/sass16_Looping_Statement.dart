import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/SASS/topicsName/SASSTopics.dart';

class SassLoopingStatement extends StatefulWidget {
  const SassLoopingStatement({Key? key}) : super(key: key);

  @override
  State<SassLoopingStatement> createState() => _SassLoopingStatementState();
}

class _SassLoopingStatementState extends State<SassLoopingStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Looping Statement'),
          const H3('@for'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          Code(title: 'main.css', code: code2, type: 'css'),
          const H3('@each'),
          Code(title: 'main.scss', code: code3, type: 'scss'),
          Code(title: 'main.css', code: code4, type: 'css'),
          const H3('@while'),
          Code(title: 'main.scss', code: code5, type: 'scss'),
          Code(title: 'main.css', code: code6, type: 'css'),
          const Link('https://sass-lang.com/documentation/at-rules/control/'),
        ],
      ),
    );
  }
}

var code6 = '''
/*While Loop*/
h1 {
  font-size: 10px;
  color: rgb(93, 44, 36);
}

h2 {
  font-size: 20px;
  color: rgb(203, 228, 163);
}

h3 {
  font-size: 30px;
  color: rgb(19, 79, 126);
}

h4 {
  font-size: 40px;
  color: rgb(61, 119, 85);
}

h5 {
  font-size: 50px;
  color: rgb(117, 207, 68);
}

h6 {
  font-size: 60px;
  color: rgb(173, 124, 112);
}
''';
var code5 = '''
/*While Loop*/
\$count: 1;
@while \$count <= 6 {
  h#{\$count} {
    font-size: 10px * \$count;
    color: rgb(random(255), random(255), random(255));
  }
  \$count: \$count + 1;
}
''';
var code4 = '''
/*Each loop*/
/*Using in List*/
.icon-40px {
  font-size: 40px;
  height: 40px;
  width: 40px;
}

.icon-50px {
  font-size: 50px;
  height: 50px;
  width: 50px;
}

.icon-80px {
  font-size: 80px;
  height: 80px;
  width: 80px;
}

/*Another eg*/
.m-1 {
  margin: 1rem;
}

.p-1 {
  padding: 1rem;
}

.mt-1 {
  margin-top: 1rem !important;
}

.pt-1 {
  padding-top: 1rem !important;
}

.mr-1 {
  margin-right: 1rem !important;
}

.pr-1 {
  padding-right: 1rem !important;
}

.mb-1 {
  margin-bottom: 1rem !important;
}

.pb-1 {
  padding-bottom: 1rem !important;
}

.ml-1 {
  margin-left: 1rem !important;
}

.pl-1 {
  padding-left: 1rem !important;
}

.m-2 {
  margin: 2rem;
}

.p-2 {
  padding: 2rem;
}

.mt-2 {
  margin-top: 2rem !important;
}

.pt-2 {
  padding-top: 2rem !important;
}

.mr-2 {
  margin-right: 2rem !important;
}

.pr-2 {
  padding-right: 2rem !important;
}

.mb-2 {
  margin-bottom: 2rem !important;
}

.pb-2 {
  padding-bottom: 2rem !important;
}

.ml-2 {
  margin-left: 2rem !important;
}

.pl-2 {
  padding-left: 2rem !important;
}

.m-3 {
  margin: 3rem;
}

.p-3 {
  padding: 3rem;
}

.mt-3 {
  margin-top: 3rem !important;
}

.pt-3 {
  padding-top: 3rem !important;
}

.mr-3 {
  margin-right: 3rem !important;
}

.pr-3 {
  padding-right: 3rem !important;
}

.mb-3 {
  margin-bottom: 3rem !important;
}

.pb-3 {
  padding-bottom: 3rem !important;
}

.ml-3 {
  margin-left: 3rem !important;
}

.pl-3 {
  padding-left: 3rem !important;
}

.m-4 {
  margin: 4rem;
}

.p-4 {
  padding: 4rem;
}

.mt-4 {
  margin-top: 4rem !important;
}

.pt-4 {
  padding-top: 4rem !important;
}

.mr-4 {
  margin-right: 4rem !important;
}

.pr-4 {
  padding-right: 4rem !important;
}

.mb-4 {
  margin-bottom: 4rem !important;
}

.pb-4 {
  padding-bottom: 4rem !important;
}

.ml-4 {
  margin-left: 4rem !important;
}

.pl-4 {
  padding-left: 4rem !important;
}

.m-56 {
  margin: 56rem;
}

.p-56 {
  padding: 56rem;
}

.mt-56 {
  margin-top: 56rem !important;
}

.pt-56 {
  padding-top: 56rem !important;
}

.mr-56 {
  margin-right: 56rem !important;
}

.pr-56 {
  padding-right: 56rem !important;
}

.mb-56 {
  margin-bottom: 56rem !important;
}

.pb-56 {
  padding-bottom: 56rem !important;
}

.ml-56 {
  margin-left: 56rem !important;
}

.pl-56 {
  padding-left: 56rem !important;
}

/*Uisng in map*/
.icon-eye:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f112";
}

.icon-start:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f12e";
}

.icon-stop:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f12f";
}

/*Using list of lists (Destructuring)*/
.icon-eye:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f112";
  font-size: 12px;
}

.icon-start:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f12e";
  font-size: 16px;
}

.icon-stop:before {
  display: inline-block;
  font-family: "Icon Font";
  content: "\f12f";
  font-size: 10px;
}
''';
var code3 = '''
/*Each loop*/
// @each <variable> in <expression> { ... }

/*Using in List*/
\$sizes: 40px, 50px, 80px;

@each \$size in \$sizes {
  .icon-#{\$size} {
    font-size: \$size;
    height: \$size;
    width: \$size;
  }
}
/*Another eg*/
\$spacing: 1, 2, 3, 4, 56;
\$directions: top, right, bottom, left;
@each \$increment in \$spacing {
  @debug "Spacing" \$increment;

  .m-#{\$increment} {
    margin: #{\$increment}rem;
  }
  .p-#{\$increment} {
    padding: #{\$increment}rem;
  }

  @each \$direction in \$directions {
    @debug "Directions" \$direction;

    .m#{str-slice(\$direction,0,1)}-#{\$increment} {
      margin-#{\$direction}: #{\$increment}rem !important ;
    }
    .p#{str-slice(\$direction,0,1)}-#{\$increment} {
      padding-#{\$direction}: #{\$increment}rem !important ;
    }
  }
}
/*Uisng in map*/
\$icons: (
  "eye": "\f112",
  "start": "\f12e",
  "stop": "\f12f",
);

@each \$name, \$glyph in \$icons {
  .icon-#{\$name}:before {
    display: inline-block;
    font-family: "Icon Font";
    content: \$glyph;
  }
}

/*Using list of lists (Destructuring)*/
\$icons: "eye" "\f112"12px, "start" "\f12e"16px, "stop" "\f12f"10px;

@each \$name, \$glyph, \$size in \$icons {
  .icon-#{\$name}:before {
    display: inline-block;
    font-family: "Icon Font";
    content: \$glyph;
    font-size: \$size;
  }
}
''';
var code2 = '''
/*For loop*/
/*using through*/
h1 {
  font-size: 10px;
  color: rgb(1, 216, 85);
}

h2 {
  font-size: 20px;
  color: rgb(84, 242, 235);
}

h3 {
  font-size: 30px;
  color: rgb(82, 20, 228);
}

h4 {
  font-size: 40px;
  color: rgb(201, 176, 134);
}

h5 {
  font-size: 50px;
  color: rgb(104, 203, 102);
}

h6 {
  font-size: 60px;
  color: rgb(72, 6, 26);
}

/*using to*/
h1 {
  font-size: 10px;
  color: rgb(192, 247, 140);
}

h2 {
  font-size: 20px;
  color: rgb(230, 32, 188);
}

h3 {
  font-size: 30px;
  color: rgb(195, 18, 166);
}

h4 {
  font-size: 40px;
  color: rgb(236, 181, 54);
}

h5 {
  font-size: 50px;
  color: rgb(75, 144, 66);
}
''';
var code1 = '''
/*For loop*/
// If to is used, the final number is excluded; if through is used, it’s included.

/*using through*/
@for \$i from 1 through 6 {
  h#{\$i} {
    font-size: 10px * \$i;
    color: rgb(random(255), random(255), random(255));
  }
}

/*using to*/
@for \$i from 1 to 6 {
  h#{\$i} {
    font-size: 10px * \$i;
    color: rgb(random(255), random(255), random(255));
  }
}
''';
