import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project4 extends StatefulWidget {
  const Project4({Key? key}) : super(key: key);

  @override
  State<Project4> createState() => _Project4State();
}

class _Project4State extends State<Project4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Typing Writing Effect'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const P(
              'Alternate. If you\'d like the animation to reverse direction every cycle, you can use the alternate value. With this value, the animation will play forwards first, then backwards.'),
          const H3('Output'),
          const Img(name: 'cssanimation4.png'),
        ],
      ),
    );
  }
}

var code2 = '''
.container {
  height: 100vh;
  display: grid;
  place-items: center;
}

.typing-text {
  font-family: monospace;
  font-size: 5em;
  color: #192a56;
  border-right: 3px solid;
  width: 22ch;
  white-space: nowrap;
  overflow: hidden;
  animation: typing 3s steps(22), blink 0.5s step-end infinite alternate;
  /* animation: typing 3s steps(22) infinite alternate, blink 0.5s step-end infinite alternate; */
}

@keyframes typing {
  from {
    width: 0;
  }
}

@keyframes blink {
  50% {
    border-color: transparent;
  }
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Typing Writing Effect</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="typing-text">This is a typing demo.</div>
    </div>
  </body>
</html>''';
