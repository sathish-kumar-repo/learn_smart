import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/html/topicName/HTMLTopics.dart';

class TextFormattingTagHTMl extends StatefulWidget {
  const TextFormattingTagHTMl({Key? key}) : super(key: key);

  @override
  State<TextFormattingTagHTMl> createState() => _TextFormattingTagHTMlState();
}

class _TextFormattingTagHTMlState extends State<TextFormattingTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Text Formating Tag'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<html>
<head>
    <title>Heading</title>
</head>
<body>
    <h1>Text Formating Tags</h1>

    <p align="center"></p>
    <p align="center"> <b>Lorem</b> ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, iure dolorem. Eius assumenda a neque laboriosam cupiditate laudantium soluta, dolorum repellendus asperiores omnis est rem debitis quisquam natus accusantium nobis eos? Eveniet explicabo exercitationem asperiores molestias aliquam fugit magni quia saepe provident sequi assumenda incidunt, alias laudantium ullam! Minima est error quisquam omnis aliquid, numquam illo incidunt asperiores perferendis maiores distinctio explicabo. Dicta sapiente, doloremque enim, quis aut at veritatis incidunt, impedit nesciunt aperiam debitis. Corrupti nulla ipsam ut ipsum veritatis culpa ex nobis quidem! Minima qui tempore quam reprehenderit voluptatum reiciendis eveniet, ullam maiores, dicta debitis consequuntur officiis dolores!
    </p>
    <b>This is bold</b>
    <i>This is italic</i>
    <br>
    <s>This is strike</s>
    <strong>This is strong same as bold</strong>
    <small>This is Small</small>
    <tt>Type Writing text format</tt>
    <u>Underline format</u>
    <sub>Subscript</sub>
    <sup>Superscript</sup>
    <pre>same output
         in editor</pre>
         <br>
</body>
</html>
''';
