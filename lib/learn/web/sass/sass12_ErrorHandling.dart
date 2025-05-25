import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/sass/topicsName/SASSTopics.dart';

class SassErrorHandling extends StatefulWidget {
  const SassErrorHandling({Key? key}) : super(key: key);

  @override
  State<SassErrorHandling> createState() => _SassErrorHandlingState();
}

class _SassErrorHandlingState extends State<SassErrorHandling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: sassTopics,
        img: 'sass.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Error Handling (@error, @warn, @debug)'),
          const H3('@error'),
          Code(title: 'main.scss', code: code1, type: 'scss'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'txt'),
          const H3('@warn'),
          Code(title: 'main.scss', code: code3, type: 'scss'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'txt'),
          const H3('@debug'),
          Code(title: 'main.scss', code: code5, type: 'scss'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'txt'),
          const Note('Follow the folder Structure'),
        ],
      ),
    );
  }
}

var code6 = '''
Debug: This is my Brand Color Primary: green
''';
var code5 = '''
@debug "This is my Brand Color Primary: #{brand-color("accent")}";
''';
var code4 = '''
Warning:
This is my Brand Color Primary: green
d:\\Tutorial\\sass_c\\assets\\scss\\main.scss 25:1  root stylesheet
''';
var code3 = '''
@warn "This is my Brand Color Primary: #{brand-color("accent")}";
''';
var code2 = '''
Compilation Error
Error: "This is my Brand Color Primary: green"
   ╷
25 │ @error "This is my Brand Color Primary: #{brand-color("accent")}";
   │ ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   ╵
  d:\\Tutorial\\sass_c\\assets\\scss\\main.scss 25:1  root stylesheet
''';
var code1 = '''
@error "This is my Brand Color Primary: #{brand-color("accent")}";
''';
