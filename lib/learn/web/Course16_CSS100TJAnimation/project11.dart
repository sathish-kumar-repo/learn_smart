import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project11 extends StatefulWidget {
  const Project11({Key? key}) : super(key: key);

  @override
  State<Project11> createState() => _Project11State();
}

class _Project11State extends State<Project11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Animated Contact Form'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation11.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

:root {
  --bgcolor: #20bf6b;
  --red: #eb3b5a;
  --purple: #8854d0;
}

body {
  height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: var(--bgcolor);
}

.container {
  width: 800px;
  background: #fff;
  padding: 25px 40px 10px 40px;
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.5);
}

.title {
  text-align: center;
  font-size: 25px;
  font-weight: 600;
  text-transform: uppercase;
  color: var(--red);
}

.container form {
  padding: 30px 0;
}

.row {
  display: flex;
  margin: 32px 0;
}

.form-group {
  /* background-color: red; */
  width: 100%;
  margin: 0 20px;
  height: 40px;
  position: relative;
}

.textarea {
  height: 70px;
}

.form-group input,
.form-group textarea {
  display: block;
  width: 100%;
  height: 100%;
  border: none;
  font-size: 17px;
  outline: none;
  border-bottom: 2px solid rgba(0, 0, 0, 0.12);
}

.form-group textarea {
  resize: none;
  padding-top: 10px;
}

.form-group label {
  position: absolute;
  font-size: 16px;
  bottom: 10px;
  pointer-events: none;
  transition: 0.3s ease;
}

.form-group input:focus ~ label,
.form-group input:valid ~ label {
  transform: translateY(-20px);
  color: var(--purple);
  font-size: 14px;
}
.form-group textarea:focus ~ label,
.form-group textarea:valid ~ label {
  transform: translateY(-50px);
  color: var(--purple);
  font-size: 14px;
}
.underline {
  width: 100%;
  height: 2px;
  background: var(--purple);
  position: absolute;
  bottom: 0;
  transform: scaleX(0);
  transition: 0.3s ease;
}

.form-group input:focus ~ .underline,
.form-group input:valid ~ .underline,
.form-group textarea:focus ~ .underline,
.form-group textarea:valid ~ .underline {
  transform: scaleX(1);
}

input[type="submit"] {
  background-color: var(--red);
  color: #fff;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animated Contact Form</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="title">Contact Us</div>
      <form action="#">
        <div class="row">
          <div class="form-group">
            <input type="text" required id="firstname" />
            <div class="underline"></div>
            <label for="firstname">First Name</label>
          </div>
          <div class="form-group">
            <input type="text" required id="lastname" />
            <div class="underline"></div>
            <label for="lastname">Last Name</label>
          </div>
        </div>
        <div class="row">
          <div class="form-group">
            <input type="text" required id="email" />
            <div class="underline"></div>
            <label for="email">Email</label>
          </div>
          <div class="form-group">
            <input type="text" required id="contact" />
            <div class="underline"></div>
            <label for="contact">Contact No</label>
          </div>
        </div>
        <div class="row">
          <div class="form-group textarea">
            <textarea required></textarea>
            <div class="underline"></div>
            <label for="">Write your message</label>
          </div>
        </div>
        <div class="row">
          <div class="form-group">
            <input type="submit" value="Send Message" />
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
''';
