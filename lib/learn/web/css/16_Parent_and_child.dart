import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class Parent_and_childProperty extends StatefulWidget {
  const Parent_and_childProperty({Key? key}) : super(key: key);

  @override
  State<Parent_and_childProperty> createState() =>
      _Parent_and_childPropertyState();
}

class _Parent_and_childPropertyState extends State<Parent_and_childProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Parent and Child Method in CSS'),
          const P(
              'The CSS child selector has two selectors separated by a > symbol. The first selector indicates the parent element. The second selector indicates the child element CSS will style'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <title>Tutorials</title>
        <style>
            body{
                color: orange;
            }
            div{
                color: red;
            }
            p{
                color: blue;
            }
            a{
                color: violet;
                text-decoration: none;
            }

        </style>
    </head>
    
    <body>  <!--Parent-->
        <h1>Sathish</h1> <!--Child-->
        <h3>Parent And Child in CSS</h3> 
        <div> <!--Child but parent in own child-->
            <h4>Heading</h4> <!--child in div grand Child in body-->
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laborum, voluptates!</p>

        </div>  
        <h4>Heading-2</h4>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error delectus animi enim cupiditate sunt harum illum labore minima? A, debitis.</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error delectus animi enim cupiditate sunt harum illum labore minima? A, debitis.</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error delectus animi enim cupiditate sunt harum illum labore minima? A, debitis.</p>
        <a href="#">Read More</a>
    </body>
</html>
''';
