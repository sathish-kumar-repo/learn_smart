import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassDatatype extends StatefulWidget {
  const SassDatatype({Key? key}) : super(key: key);

  @override
  State<SassDatatype> createState() => _SassDatatypeState();
}

class _SassDatatypeState extends State<SassDatatype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Datatype'),
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
h2 {
  color: #0d6efd;
  font-size: 35px;
}

h2 {
  font-size: 35px;
}
''';
var code1 = '''
// Number
\$font: 14px;

// String
\$font-family: "Roboto";

// Colors
\$color: red;

// Lists
\$font-weight: ("400", "500");

// Maps
\$colors: (
  "primary": #0d6efd,
  "success": #198754,
  "danger": #ea162b,
  "info": #0dcaf0,
  "warning": #ffc107,
);
@debug map-get(\$colors, "primary");
@debug map-has-key(\$colors, "danger");
@debug map-has-key(\$colors, "secondary");
@debug map-remove(\$colors, "info");

// Compulsory circular bracket should be use in map
@debug map-merge(
  \$colors,
  (
    "secondary": #6610f2,
  )
); // to add new value

h2 {
  color: map-get(\$colors, "primary");
  font-size: 20px+15px;
}

// True or False
\$dark-mode: false;

// Null
\$theme-color: null;
h2 {
  color: \$theme-color;
  font-size: 20px+15px;
}
''';
