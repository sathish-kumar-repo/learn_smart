import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS Animation/topicName/css100TJAnimation.dart';

class Project2 extends StatefulWidget {
  const Project2({Key? key}) : super(key: key);

  @override
  State<Project2> createState() => _Project2State();
}

class _Project2State extends State<Project2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Rotating Ball'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation2.png'),
        ],
      ),
    );
  }
}

var code2 = '''
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  min-height: 100vh;
  display: grid;
  place-items: center;
}

.container {
  width: 300px;
  height: 300px;
  position: relative;
}

.container > div {
  position: absolute;
  width: 100%;
  height: 100%;

  animation: rotation 5s linear infinite;
  animation-delay: calc(0.15s * var(--i));
}

@keyframes rotation {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(720deg);
  }
}

.ball {
  position: absolute;
  width: 2px;
  height: 2px;
  background-color: #00a814;
  border-radius: 50%;
  animation: resize 2s linear infinite;
  animation-delay: calc(0.15s * var(--i));
}

@keyframes resize {
  0% {
    filter: hue-rotate(0deg);
  }
  90% {
    transform: scale(50);
    filter: hue-rotate(360deg);
  }
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rotating Ball</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div style="--i: 1"><div class="ball"></div></div>
      <div style="--i: 2"><div class="ball"></div></div>
      <div style="--i: 3"><div class="ball"></div></div>
      <div style="--i: 4"><div class="ball"></div></div>
      <div style="--i: 5"><div class="ball"></div></div>
      <div style="--i: 6"><div class="ball"></div></div>
      <div style="--i: 7"><div class="ball"></div></div>
      <div style="--i: 8"><div class="ball"></div></div>
      <div style="--i: 9"><div class="ball"></div></div>
      <div style="--i: 10"><div class="ball"></div></div>
    </div>
  </body>
</html>
''';
