import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS Animation/topicName/css100TJAnimation.dart';

class Project6 extends StatefulWidget {
  const Project6({Key? key}) : super(key: key);

  @override
  State<Project6> createState() => _Project6State();
}

class _Project6State extends State<Project6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Tourist Card'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation6.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Roboto Condensed", sans-serif;
}

body {
  background-color: #333;
}

main {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card {
  width: 24rem;
  height: 36rem;
  background-color: #fff;
  border-radius: 5px;
  overflow: hidden;
  cursor: pointer;
  position: relative;
  box-shadow: 0 10px 30px 5px rgba(0, 0, 0, 0.2);
}

.card img {
  position: absolute;
  object-fit: cover;
  width: 100%;
  height: 100%;
}

.card-content {
  position: absolute;
  bottom: -50px;
  left: 0px;
  padding: 15px 35px;
  background-color: #fff;
  color: #333;
  transition: bottom 0.3s ease-in-out;
}

.card:hover .card-content {
  bottom: 0;
}

.card-content h2 {
  min-height: 50px;
  color: #40739e;
  font-weight: 400;
}

.card-content p {
  max-height: 0;
  overflow: hidden;
  margin-bottom: 10px;
  transition: max-height 0.3s ease-in-out;
  line-height: 20px;
}

.card:hover .card-content p {
  max-height: 150px;
}

.card-content a {
  text-decoration: none;
}

.card-content a:hover {
  text-decoration: underline;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tourist Card in CSS</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <main>
      <div class="card">
        <img src="Taj.jpg" alt="Taj Mahal" />
        <div class="card-content">
          <h2>Taj Mahal</h2>
          <p>
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sit
            eveniet ipsam id deserunt debitis laboriosam omnis laborum, quaerat
            sunt, mollitia, enim vero numquam ratione inventore error pariatur
            cupiditate itaque nobis.
          </p>
          <a href="#">Read More</a>
        </div>
      </div>
    </main>
  </body>
</html>
''';
