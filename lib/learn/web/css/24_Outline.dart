import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class OutlineProperty extends StatefulWidget {
  const OutlineProperty({Key? key}) : super(key: key);

  @override
  State<OutlineProperty> createState() => _OutlinePropertyState();
}

class _OutlinePropertyState extends State<OutlineProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const Note(
              'Outline differs from borders! Unlike border, the outline is drawn outside the element\'s border, and may overlap other content. Also, the outline is NOT a part of the element\'s dimensions; the element\'s total width and height is not affected by the width of the outline.'),
          const H3(
              'This CSS outline property defines the width, line style, and color of the outline of an element. '),
          Code(title: 'style.css', code: code, type: 'css'),
          Code(title: 'style.css', code: code1, type: 'css'),
        ],
      ),
    );
  }
}

var code1 = '''
p.ex1 {outline: dashed;}
p.ex2 {outline: dotted red;}
p.ex3 {outline: 5px solid yellow;}
p.ex4 {outline: thick ridge pink;}
''';
var code = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            div{
                width: 300px;
                border: 3px solid brown;
                padding: 30px;
                outline: 2px solid blue;

                outline-width: 3px;
                outline-style: dotted;
                outline-color: red;

                outline-offset: 3px;
            }
        </style>
    </head>
    
    <body>
        <h1>Outline in CSS</h1>   
        <div>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptas iure dignissimos laudantium nostrum ratione labore earum velit minima harum. Culpa blanditiis quaerat mollitia odio laudantium iure iusto quis assumenda excepturi.
            </p>
        </div>
    </body>
</html>

<!-- 
    outline-width
    outline -style
        * solid
        * dotted
        * dashed
        * double
        * groove
        * ridge
        * inset
        * outset
        * none

    outline-color
    outline-offset 
-->
''';
