import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Basic_Program_in_JS extends StatefulWidget {
  const Basic_Program_in_JS({Key? key}) : super(key: key);

  @override
  State<Basic_Program_in_JS> createState() => _Basic_Program_in_JSState();
}

class _Basic_Program_in_JSState extends State<Basic_Program_in_JS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Basic Program in JS'),
          Code(title: 'basic.html', code: code, type: 'html'),
          const Link('https://www.tutorjoes.in/JS_tutorial/index'),
        ],
      ),
    );
  }
}

var code = '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sathish Kumar</title>
</head>
<body>
    <script>
        alert("Sathish Kumar");
    </script>
</body>
</html>
''';
