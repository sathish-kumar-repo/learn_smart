import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project5 extends StatefulWidget {
  const Project5({Key? key}) : super(key: key);

  @override
  State<Project5> createState() => _Project5State();
}

class _Project5State extends State<Project5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Card With Photo Animation'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation5.png'),
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
  width: 100%;
  height: 100vh;
  background-color: #222;
  display: grid;
  place-items: center;
}

img {
  width: 30%;
  height: 100%;
  object-fit: cover;
  
  transform: perspective(800px) rotateY(25deg);
  transition: 0.5s;
}
 
.container {
  max-width: 800px;
  max-height: 350px;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
  cursor: pointer;
}

.container:hover img {
  opacity: 0.5;
}

.container img:hover {
  transform: perspective(800px) rotateY(0deg) scale(1.2);
  z-index: 99;
  opacity: 1;
} 
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Card With Photo Animation</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <img src="images/1.jpg" alt="Flowers" />
      <img src="images/2.jpg" alt="Flowers" />
      <img src="images/3.jpg" alt="Flowers" />
    </div>
  </body>
</html>
''';
