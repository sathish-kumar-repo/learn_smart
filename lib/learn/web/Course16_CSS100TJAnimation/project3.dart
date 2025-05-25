import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project3 extends StatefulWidget {
  const Project3({Key? key}) : super(key: key);

  @override
  State<Project3> createState() => _Project3State();
}

class _Project3State extends State<Project3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Wave Effect'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation3.png'),
        ],
      ),
    );
  }
}

var code2 = '''
* {
  margin: 0;
  padding: 0;
}
body {
  min-height: 100vh;
  display: grid;
  place-items: center;
  background-color: #1e272e;
}

.wave {
  position: relative;
  width: 500px;
  height: 500px;
  transform-style: preserve-3d;
  transform: perspective(800px) rotateX(60deg);
}
.wave div {
  position: absolute;
  display: block;
  border: 10px solid #fff;
  box-shadow: 0 8px 0 #ccc;
  border-radius: 50%;

  animation: wave 3s ease-in-out infinite;
  top: calc(var(--i) * 10px);
  left: calc(var(--i) * 10px);
  bottom: calc(var(--i) * 10px);
  right: calc(var(--i) * 10px);
  animation-delay:calc(var(--i) * 0.1s) ;
}

@keyframes wave {
  0%,
  100% {
    transform: translateZ(-120px);
  }
  50% {
    transform: translateZ(120px);
  }
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wave Effect</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="wave">
        <div style="--i: 0"></div>
        <div style="--i: 1"></div>
        <div style="--i: 2"></div>
        <div style="--i: 3"></div>
        <div style="--i: 4"></div>
        <div style="--i: 5"></div>
        <div style="--i: 6"></div>
        <div style="--i: 7"></div>
        <div style="--i: 8"></div>
        <div style="--i: 9"></div>
        <div style="--i: 10"></div>
        <div style="--i: 11"></div>
        <div style="--i: 12"></div>
        <div style="--i: 13"></div>
        <div style="--i: 14"></div>
        <div style="--i: 15"></div>
        <div style="--i: 16"></div>
        <div style="--i: 17"></div>
        <div style="--i: 18"></div>
        <div style="--i: 19"></div>
    </div>
  </body>
</html>
''';
