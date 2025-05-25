import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Photo Animation'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation1.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap");

body {
  margin: 0;
  font-family: "Lato", sans-serif;
  background-color: #2f3542;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card {
  position: relative;
  width: 320px;
  height: 350px;
  background-color: #fff;
  border-radius: 3px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
}

.card::before,
.card::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #fff;
  z-index: -1;
  transition: 0.5s;
}

.card:hover::before {
  transform: rotate(20deg);
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.2);
}

.card:hover::after {
  transform: rotate(10deg);
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.2);
}

.img-box {
  position: absolute;
  background: #2f3542;
  top: 10px;
  left: 10px;
  bottom: 10px;
  right: 10px;
  transition: 0.5s;
}

img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  z-index: 2;
}
.card:hover .img-box {
  bottom: 80px;
}

.details {
  position: absolute;
  left: 10px;
  right: 10px;
  bottom: 10px;
  height: 60px;
  text-align: center;
}
h2 {
  margin: 0;
  padding: 0;
  font-weight: 600;
  font-size: 20px;
  color: #222;
  text-transform: uppercase;
}

h2 span {
  font-size: 16px;
  color: #ff4757;
  font-weight: 500;
  text-transform: capitalize;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Photo Animation</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="card">
      <div class="img-box">
        <img src="baby.jpg" alt="Baby" />
      </div>
      <div class="details">
        <h2>Tiya Patricia<br /><span>Baby Girl</span></h2>
      </div>
    </div>
  </body>
</html>
''';
